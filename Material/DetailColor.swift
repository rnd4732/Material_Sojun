//
//  DetailColor.swift
//  Material
//
//  Created by Wonkyoung on 2017. 1. 3..
//  Copyright © 2017년 Wonkyoung. All rights reserved.
//

struct DetailColor {
    var name: String
    var colorCode: String
    var memo: String? = nil
    
    init(name title: String?) {
        if let name = title {
            self.name = name
        } else {
            self.name = "UNTITLED"
        }
        colorCode = "#000000"
    }
}
