//
//  Cloud.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 11, 2020

import Foundation
import UIKit
import ObjectMapper

//MARK: - Cloud
public struct Cloud: Mappable,Codable {

    var all : Int?
    public init?(map: Map) {}
    mutating public func mapping(map: Map) {
       all <- map["all"]
    }

}
