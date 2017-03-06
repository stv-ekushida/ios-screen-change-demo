//
//  SecondViewController.swift
//  ios-screen-change-demo
//
//  Created by Kushida　Eiji on 2017/03/06.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    /// 引数
    private var viewModel: SecondViewModel?

    // MARK: Initializer    
    /// ViewControllerのインスタンスを取得する
    static func create(viewModel: SecondViewModel) -> SecondViewController{
        let vc = UIStoryboard.getViewController(storyboardName: "Main",
                                                identifier: identifier) as! SecondViewController
        vc.viewModel = viewModel
        return vc
    }
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel?.title ?? "")
    }
}
