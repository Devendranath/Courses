//
//  ViewController.swift
//  Courses
//
//  Created by apple on 02/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var courses: [String: [String]] = [
        "FrontEnd": ["HTML", "CSS", "JS", "Angular"],
        "BackEnd": ["PHP", "Java", "NodeJS"],
        "DBTech": ["SQL", "MONGODB", "ORACLE", "TERADATA"],
        "MobileOS": ["iOS", "Android", "BlackBerry", "Windows"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return courses.count // 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(courses.keys)
        
        var keys = [String]()
        for aKey in courses.keys {
            print(aKey)
            keys.append(aKey)
        }
        return courses[keys[section]]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let freeCell = tableView.dequeueReusableCell(withIdentifier: "TechCell")
         
        var keys = [String]()
        for aKey in courses.keys {
            print(aKey)
            keys.append(aKey)
        }
        
        let subject = courses[keys[indexPath.section]]?[indexPath.row]
        freeCell?.textLabel?.text = subject
        freeCell?.detailTextLabel?.text = keys[indexPath.section]
        freeCell?.accessoryType = .checkmark
        return freeCell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var keys = [String]()
        for aKey in courses.keys {
            print(aKey)
            keys.append(aKey)
        }
        return keys[section]
    }
}

