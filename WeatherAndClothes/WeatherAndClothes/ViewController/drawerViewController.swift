//
//  drawerViewController.swift
//  WeatherAndClothes
//
//  Created by 전예린 on 2019. 2. 13..
//  Copyright © 2019년 전예린. All rights reserved.
//

import UIKit
import KYDrawerController

class drawerViewController: UIViewController {
    
    //MARK: properties
    let drawerController = KYDrawerController(drawerDirection: .left, drawerWidth: 325)

    //MARK: IBOutlet
    @IBOutlet weak var dayAndNightLabel: UILabel!
    @IBOutlet weak var alarmTimeLabel: UILabel!
    @IBOutlet weak var alarmSettingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alarmSettingGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(settingViewTapped(_:)))
        alarmSettingView.addGestureRecognizer(alarmSettingGesture)
    }
    
    //MARK: Methods
    @objc func settingViewTapped(_ sender: UITapGestureRecognizer) {
        if let parent = self.parent as? KYDrawerController,
            let current = parent.mainViewController as? UINavigationController {
            parent.setDrawerState(.closed, animated: true)
            DispatchQueue.main.async {
                let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController: UIViewController = storyboard.instantiateViewController(withIdentifier: "myAlarm")
                current.pushViewController(viewController, animated: true)
            }
        }
    }
}
