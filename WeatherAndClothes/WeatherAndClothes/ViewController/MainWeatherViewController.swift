//
//  MainWeatherViewController.swift
//  WeatherAndClothes
//
//  Created by 전예린 on 2019. 2. 11..
//  Copyright © 2019년 전예린. All rights reserved.
//

import UIKit
import KYDrawerController

class MainWeatherViewController: UIViewController {
    
    //MARK: properties
    
    //MARK: IBOutlet
    @IBOutlet weak var faceChangeImageView: UIImageView!
    @IBOutlet weak var bodyChangeImageView: UIImageView!
    @IBOutlet weak var heartChangeImageView: UIImageView!
    
    @IBOutlet weak var mainIconImageVIew: UIImageView!
    @IBOutlet weak var weatherConditionLabel: UILabel!
    @IBOutlet weak var tempertatureLabel: UILabel!
    
    @IBOutlet weak var middleSentenceLabel: UILabel!
    @IBOutlet weak var middleLine1View: UIView!
    @IBOutlet weak var middleLine2VIew: UIView!
    
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var microdustLabel: UILabel!
    @IBOutlet weak var bodyTempLabel: UILabel!
    @IBOutlet weak var bottomSentenceLabel: UILabel!
    
    //MARK: IBAction
    @IBAction func drawerTapped(_ sender: Any) {
        if let drawer = navigationController?.parent as? KYDrawerController {
            drawer.setDrawerState(.opened, animated: true)
        }
    }
    
    
    //MARK: IBAction

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
    
    //MARK: Methods
}
