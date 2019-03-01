//
//  AlarmSettingViewController.swift
//  WeatherAndClothes
//
//  Created by 전예린 on 19/02/2019.
//  Copyright © 2019 전예린. All rights reserved.
//

import UIKit

class AlarmSettingViewController: UIViewController {

    
    @IBOutlet weak var timeInputTextField: UITextField!
    private var datePicker: UIDatePicker?
    
    //MARK:LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .time
        datePicker?.addTarget(self, action: #selector(AlarmSettingViewController.dateChanged(datePicker:)), for: .valueChanged)
        timeInputTextField.inputView = datePicker
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(AlarmSettingViewController.viewTapped(gestureRegcognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    //MARK:FUNCTION
    
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
