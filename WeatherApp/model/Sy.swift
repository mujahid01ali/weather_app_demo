//
//  Sy.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - Sy
public struct Sy: Mappable,Codable {

    var country : String?
    var sunrise : Int?
    var sunset : Int?
    public init?(map: Map) {}
    mutating public func mapping(map: Map) {
       country <- map["country"]
       sunrise <- map["sunrise"]
       sunset <- map["sunset"]
    }

}
