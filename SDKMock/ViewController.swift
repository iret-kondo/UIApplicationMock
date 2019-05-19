//
//  ViewController.swift
//  SDKMock
//
//  Created by 近藤 寛志 on 2019/05/19.
//  Copyright © 2019 iret, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didEndOnExit(_ sender: UITextField) {
        guard let urlString = sender.text, let url = URL(string: urlString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(url) {
            // 入力したURLを開ける場合に開く
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}

