//
//  ColorCell.swift
//  Material
//
//  Created by Wonkyoung on 2017. 1. 3..
//  Copyright © 2017년 Wonkyoung. All rights reserved.
//

import UIKit

class ColorCell: UITableViewCell {
    let titleLabel = UILabel()
    let colorCodeLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.titleLabel.font = UIFont.boldSystemFont(ofSize: 25)
        self.colorCodeLabel.font = UIFont.systemFont(ofSize: 15)
        self.titleLabel.textColor = .white
        self.colorCodeLabel.textColor = .white
        self.colorCodeLabel.numberOfLines = 0
        self.backgroundColor = .black
        
        self.addSubview(titleLabel)
        self.addSubview(colorCodeLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.titleLabel.frame.origin.x = 15
        self.titleLabel.frame.origin.y = 65
        self.titleLabel.sizeToFit()
        
        self.colorCodeLabel.frame.origin.x = 15
        self.colorCodeLabel.frame.origin.y = 95
        self.colorCodeLabel.sizeToFit()
    }
}
