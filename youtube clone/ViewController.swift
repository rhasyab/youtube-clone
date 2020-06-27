//
//  ViewController.swift
//  youtube clone
//
//  Created by Rhasya Bintang Rizqi on 26/06/20.
//  Copyright © 2020 Rhasya Bintang Rizqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

