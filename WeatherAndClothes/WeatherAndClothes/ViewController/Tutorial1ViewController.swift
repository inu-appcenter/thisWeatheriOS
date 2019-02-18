//
//  Tutorial1ViewController.swift
//  WeatherAndClothes
//
//  Created by 전예린 on 2019. 2. 13..
//  Copyright © 2019년 전예린. All rights reserved.
//

import UIKit

class Tutorial1ViewController: UIViewController {

    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //네비바 투명으로
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
    }
}
