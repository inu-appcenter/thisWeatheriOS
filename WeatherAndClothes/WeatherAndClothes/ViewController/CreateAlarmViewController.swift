//
//  CreateAlarmViewController.swift
//  WeatherAndClothes
//
//  Created by 전예린 on 2019. 2. 13..
//  Copyright © 2019년 전예린. All rights reserved.
//

import UIKit
import KYDrawerController

class CreateAlarmViewController: UIViewController {
    
    //MARK: properties
    let drawerController = KYDrawerController(drawerDirection: .left, drawerWidth: 315)
   
    
    //MARK: IBAction
    @IBAction func 완료눌렀을때(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "main")
        let drawerVC = storyboard.instantiateViewController(withIdentifier: "drawer")

        drawerController.mainViewController = mainVC
        drawerController.drawerViewController = drawerVC
        self.present(drawerController, animated: true, completion: nil)
    }

    @IBOutlet weak var timeInputTextField: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .time
        datePicker?.addTarget(self, action: #selector(CreateAlarmViewController.dateChanged(datePicker:)), for: .valueChanged)
        timeInputTextField.inputView = datePicker
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CreateAlarmViewController.viewTapped(gestureRegcognizer:)))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTapped(gestureRegcognizer:UITapGestureRecognizer){
        view.endEditing(true)
    }
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        timeInputTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
}
