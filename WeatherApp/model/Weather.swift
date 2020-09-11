//
//  Weather.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - Weather
public struct Weather: Mappable,Codable {

    var id : Int?
    var main : String?
    var descriptionField : String?
    var icon : String?
    public init?(map: Map) {}
    mutating public func mapping(map: Map) {
       id <- map["id"]
       main <- map["main"]
       descriptionField <- map["description"]
       icon <- map["icon"]
    }

}
