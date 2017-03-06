//
//  FirstViewController.swift
//  ios-screen-change-demo
//
//  Created by Kushida　Eiji on 2017/03/06.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: User Interaction
    @IBAction func didTapButton(_ sender: UIButton) {
        
        let vc = SecondViewController.create(viewModel: SecondViewModel(title: "aaa"))
        present(vc, animated: true, completion: nil)
    }    
}

