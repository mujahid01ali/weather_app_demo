//
//  String.swift
//  WeatherApp
//
//  Created by Mujahid on 11/09/20.
//  Copyright © 2020 Individual. All rights reserved.
//

import Foundation
extension String{
    func isNilOrEmpty(str:String?) -> String {
        if let st = str{
            return st
        }else{
            return "--"
        }
    }
}
