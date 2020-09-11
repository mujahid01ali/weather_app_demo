//
//  DetailController.swift
//  WeatherApp
//
//  Created by Mujahid on 11/09/20.
//  Copyright © 2020 Individual. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var lbWindSpeed: UILabel!
    @IBOutlet weak var lbHumidity: UILabel!
    @IBOutlet weak var lbPressure: UILabel!
    @IBOutlet weak var lbMaxtemp: UILabel!
    @IBOutlet weak var lbMinTemp: UILabel!
    @IBOutlet weak var lbCurrentTemp: UILabel!
    @IBOutlet weak var lblPlaceName: UILabel!
    @IBOutlet weak var lblWeatherType: UILabel!
    var weatherData:WeatherData?
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.setUI()
        }
        // Do any additional setup after loading the view.
    }
    func setUI(){
        
        print(weatherData!)
        lblPlaceName.getString(str: weatherData?.name)
        lblWeatherType.getString(str: weatherData?.weather?[0].main)
        lbCurrentTemp.getString(str: String(weatherData?.main?.temp ?? 0.0))
        lbHumidity.getString(str: String(weatherData?.main?.humidity ?? 0))
        lbMinTemp.getString(str: String(weatherData?.main?.tempMin ?? 0.0))
        lbMaxtemp.getString(str: String(weatherData?.main?.tempMax ?? 0.0))
        lbWindSpeed.getString(str: String(weatherData?.wind?.speed ?? 0.0))
        

//        if let minTemp = weatherData?.main.tempMin{
//            lbMinTemp.text = "\(minTemp)"
//        }else{
//            lbMinTemp.text = "--"
//        }
//        if let maxtemp = {
//            lbMaxtemp.text = "\(maxtemp)"
//        }else{
//            lbMaxtemp.text = "--"
//        }"
        //print(String.getString(str: "\(weatherData?.main?.pressure ?? nil)"))
       // lbPressure.text?.getString(str: "\(weatherData?.main?.pressure)")
       // lbWindSpeed.text?.getString(str: "\(weatherData?.wind)")
        lbPressure.getString(str: String(weatherData?.main?.pressure ?? 0))
        
        
        
    }
    
}

extension UILabel {
    func getString(str:String?) {
        self.text = str ?? "--"
    }
}
