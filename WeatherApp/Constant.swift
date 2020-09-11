//
//  Constant.swift
//  WeatherApp
//
//  Created by Mujahid on 11/09/20.
//  Copyright © 2020 Individual. All rights reserved.
//

import Foundation

struct ApiKey {
    static let WEATHER_API_KEY = "f9c67fb4a2ee25030a7c7f304f88c9fb"
    static let GOOGLE_MAP_API = "AIzaSyDqw8bUUY_-a8Lfsc5sHBiFhh_2degGcEM"
}

struct API{
    static let BASE_URL = "https://api.openweathermap.org/data/2.5/weather"
}
struct ApiParameters {
    static let LAT = "lat"
    static let LON = "lon"
    static let APPID = "appid"
    static let UNITS = "units"
    static let MATRIC = "metric"
}
