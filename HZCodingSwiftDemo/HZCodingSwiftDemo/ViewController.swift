//
//  ViewController.swift
//  HZCodingSwiftDemo
//
//  Created by DM on 2017/4/6.
//  Copyright © 2017年 HZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tempFile:NSString = NSTemporaryDirectory() as NSString
        let filePat = tempFile.appendingPathComponent("person.plist")
        
        let person = Person()
        person.name = "张三"
        person.age = 18
        person.isBig = true
        
        NSKeyedArchiver.archiveRootObject(person, toFile: filePat)
        
        let getPerson:Person = NSKeyedUnarchiver.unarchiveObject(withFile: filePat) as! Person
        print(getPerson.getAllPropertiesAndVaules())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

