//
//  ColorListViewController.swift
//  Material
//
//  Created by Wonkyoung on 2017. 1. 3..
//  Copyright © 2017년 Wonkyoung. All rights reserved.
//

import UIKit

class ColorListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableView = UITableView()
    
    var colors: [Color] = [
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
        Color(title: "test"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        self.navigationItem.title = "M  A  T  E  R  I  A  L"
        self.tableView.register(ColorCell.self, forCellReuseIdentifier: "colorCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.frame = self.view.bounds
        self.tableView.backgroundColor = UIColor.init(red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        self.view.addSubview(tableView)
//        self.colors.append(Color(title: "asdf"))
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath) as! ColorCell
        let color = self.colors[indexPath.row]
        
        cell.titleLabel.text = color.title
        cell.colorCodeLabel.text = color.titleColor.name + " " + color.titleColor.colorCode
        
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120;
    }
    
    
}

