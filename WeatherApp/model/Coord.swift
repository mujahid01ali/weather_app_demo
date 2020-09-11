//
//  Coord.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - Coord
public struct Coord: Mappable,Codable {

    var lon : Float?
    var lat : Float?
    public init?(map: Map) {}
    mutating public func mapping(map: Map) {
       lon <- map["lon"]
       lat <- map["lat"]
    }

}
