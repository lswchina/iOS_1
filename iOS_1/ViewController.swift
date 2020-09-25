//
//  ViewController.swift
//  iOS_1
//
//  Created by 1163418363@qq.com on 2020/9/24.
//  Copyright © 2020 1163418363@qq.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.addTarget(self, action:#selector(flash), for: .touchUpInside)
    }

    @objc private func flash(){
        let page = UIView(frame: self.view.bounds)
        if self.btn.currentTitle == "OFF"{
            page.backgroundColor = UIColor.black
            self.btn.setTitle("ON", for: .normal)
            self.view.addSubview(page)
            self.view.addSubview(self.btn)
        }
        else{
            page.backgroundColor = UIColor.white
            self.btn.setTitle("OFF", for: .normal)
            self.view.addSubview(page)
            self.view.addSubview(self.btn)
        }
        return;
    }

}

