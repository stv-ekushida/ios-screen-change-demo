//
//  UIViewController+Helper.swift
//  ios-screen-change-demo
//
//  Created by Kushida　Eiji on 2017/03/06.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        get {
            return String(describing: self)
        }
    }
}
