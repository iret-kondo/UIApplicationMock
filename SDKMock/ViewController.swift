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
        open(urlString: sender.text)
    }
    
    internal func open(urlString: String?, application: UIApplicationProtocol = UIApplication.shared) {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            return
        }
        
        if application.canOpenURL(url) {
            // 引数のURLを開ける場合に開く
            application.open(url, options: [:], completionHandler: nil)
        }
    }
    
}

