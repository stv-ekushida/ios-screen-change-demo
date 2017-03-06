//
//  UIStoryboard+Helper.swift
//  ios-screen-change-demo
//
//  Created by Kushida　Eiji on 2017/03/06.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static func getViewController<T: UIViewController>(storyboardName: String, identifier: String) -> T? {
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier) as? T
    }
}
