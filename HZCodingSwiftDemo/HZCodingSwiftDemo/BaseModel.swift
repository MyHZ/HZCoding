//
//  BaseModel.swift
//  HZCodingSwiftDemo
//
//  Created by DM on 2017/4/6.
//  Copyright © 2017年 HZ. All rights reserved.
//

import UIKit
import NSObject_HZCoding

class BaseModel: NSObject,NSCoding {
    override init() {
        super.init()
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self.hz_decode(aDecoder)
    }
    
    func encode(with aCoder: NSCoder) {
        self.hz_encode(aCoder)
    }
}

