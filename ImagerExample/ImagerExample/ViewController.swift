//
//  ViewController.swift
//  ImagerExample
//
//  Created by Meniny on 2017-05-11.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import UIKit
import Imager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.   
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Create an array of images.
        
        var images = [String]()
        for i in 1...16 {
            images.append("http://meniny.cn/assets/images/apps/App-\(i).jpg")
        }
        
        Imager.show(URLStrings: images, controller: self)
//        self.showImager(URLStrings: images)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

