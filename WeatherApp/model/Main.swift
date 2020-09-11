//
//  Main.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - Main
public struct Main: Mappable,Codable {

    var temp : Float?
    var feelsLike : Float?
    var tempMin : Float?
    var tempMax : Float?
    var pressure : Int?
    var humidity : Int?
    var seaLevel : Int?
    var grndLevel : Int?
    public init?(map: Map) {}
    mutating public func mapping(map: Map) {
       temp <- map["temp"]
       feelsLike <- map["feelsLike"]
       tempMin <- map["tempMin"]
       tempMax <- map["tempMax"]
       pressure <- map["pressure"]
       humidity <- map["humidity"]
       seaLevel <- map["seaLevel"]
       grndLevel <- map["grndLevel"]
    }

}
