//
//  WeatherData.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - WeatherData
public struct WeatherData: Mappable,Codable {

    var coord : Coord?
    var weather : [Weather]?
    var base : String?
    var main : Main?
    var visibility : Int?
    var wind : Wind?
    var clouds : Cloud?
    var dt : Int?
    var sys : Sy?
    var timezone : Int?
    var id : Int?
    var name : String?
    var cod : Int?
    public init?(map: Map) {}
    init() {
    }
    mutating public func mapping(map: Map) {
       coord <- map["coord"]
       weather <- map["weather"]
       base <- map["base"]
       main <- map["main"]
       visibility <- map["visibility"]
       wind <- map["wind"]
       clouds <- map["clouds"]
       dt <- map["dt"]
       sys <- map["sys"]
       timezone <- map["timezone"]
       id <- map["id"]
       name <- map["name"]
       cod <- map["cod"]
    }

}
