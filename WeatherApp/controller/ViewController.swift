//
//  ViewController.swift
//  WeatherApp
//
//  Created by Mujahid on 11/09/20.
//  Copyright © 2020 Individual. All rights reserved.
//

import UIKit
import GoogleMaps
import Alamofire
import ObjectMapper

class ViewController: UIViewController,GMSMapViewDelegate {

    @IBOutlet weak var googleMaps: GMSMapView!
    let markerStart = GMSMarker()
    var weatherViewModel = WeatherViewModel()
    var weatherData:WeatherData?
    var tap:Int = 0
    var currentLocation = CLLocationCoordinate2D(latitude: 27.149888, longitude: 78.006790)
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        googleMaps.delegate = self
        googleMaps.settings.zoomGestures = false
        DispatchQueue.global().async {
            self.getLocation()
        }
        
        
        
        
        
    }
    
    func getLocation() {
        locationManager.requestWhenInUseAuthorization()
        if(CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
        CLLocationManager.authorizationStatus() == .authorizedAlways) {
            currentLocation = CLLocationCoordinate2D(latitude: locationManager.location?.coordinate.latitude ?? 0.0, longitude: locationManager.location?.coordinate.longitude ?? 0.0)
            
            
        }
        DispatchQueue.main.async {
            print(self.currentLocation)
            self.updatePosition()
        }
    }
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
         
        if tap == 1 {
            currentLocation = CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
                   
                   DispatchQueue.global().async {
                       self.apiCall(url: API.BASE_URL,param: [ApiParameters.LAT:self.currentLocation.latitude,ApiParameters.LON:self.currentLocation.longitude,ApiParameters.APPID:ApiKey.WEATHER_API_KEY,ApiParameters.UNITS:ApiParameters.MATRIC], className: WeatherData.self)
                   }
            tap = 0
        }else{
            if tap == 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                     self.tap = 0
                }
            }
            tap = tap + 1
        }
        
       
        
    }
    
    
    func apiCall<T: Mappable>(url:String, param:[String:Any],className:T.Type)  {
          AFWrapper.requestGETURL(url: url, params: param, success: { (response:T) in
            print(url)
            self.weatherData = WeatherData()
            self.weatherData = response as? WeatherData
            self.alert(cityName: self.weatherData?.name ?? "", temp: self.weatherData?.main?.temp ?? 0.0)
          }, failure: { (error:Error) in
              print("Failure")
          })
      }
    
    func alert(cityName:String,temp:Float) {
        let alert = UIAlertController(title: cityName, message: "Current Tempreture is : \(temp)", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "More", style: .default, handler: { action in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailController") as! DetailController
            vc.weatherData = self.weatherData
            self.navigationController?.pushViewController(vc, animated: true)
        }))

        self.present(alert, animated: true)
    }
    func updatePosition() {
        let camera = GMSCameraPosition(latitude: currentLocation.latitude, longitude: currentLocation.longitude,zoom: 6.0)
        googleMaps.camera = camera
        googleMaps.animate(to: camera)
        showMarker(position: currentLocation)
        DispatchQueue.global().async {
            self.apiCall(url: API.BASE_URL,param: [ApiParameters.LAT:self.currentLocation.latitude,ApiParameters.LON:self.currentLocation.longitude,ApiParameters.APPID:ApiKey.WEATHER_API_KEY,ApiParameters.UNITS:ApiParameters.MATRIC], className: WeatherData.self)
        }
    }
    func showMarker(position:CLLocationCoordinate2D) {
        markerStart.position = position
        markerStart.map = googleMaps
    }


}

extension ViewController{
    
}

