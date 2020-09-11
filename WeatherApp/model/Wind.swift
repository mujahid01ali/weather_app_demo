//
//  Wind.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - Wind
public struct Wind: Mappable,Codable {

    var speed : Float?
    var deg : Int?
    public init?(map: Map) {}
    mutating public func mapping(map: Map) {
       speed <- map["speed"]
       deg <- map["deg"]
    }

}
