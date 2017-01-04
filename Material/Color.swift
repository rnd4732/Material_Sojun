//
//  Color.swift
//  Material
//
//  Created by Wonkyoung on 2017. 1. 3..
//  Copyright © 2017년 Wonkyoung. All rights reserved.
//

struct Color {
    var title: String
    var colorList: [DetailColor] = []
    var titleColor: DetailColor
    
    init(title name: String?) {
        if let title = name {
            self.title = title
        } else {
            self.title = "UNTITLED"
        }
        self.colorList.append(DetailColor(name: self.title))
        titleColor = self.colorList[0]
    }
}
