//
//  MyAlarmViewController.swift
//  WeatherAndClothes
//
//  Created by 전예린 on 18/02/2019.
//  Copyright © 2019 전예린. All rights reserved.
//

import UIKit

class MyAlarmViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //MARK: properties
    let myAlarmCellIdentifier: String = "myAlarmCell"
    
    //MARK: IBOutlet
    @IBOutlet weak var myAlarmTableView: UITableView!
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView delegate
        myAlarmTableView.delegate = self
        myAlarmTableView.dataSource = self
        
        //테이블 셀 높이 설정
        myAlarmTableView.rowHeight = 85
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        //네비바 구분선 없애기
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    //MARK: Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MyAlarmTableViewCell = myAlarmTableView.dequeueReusableCell(withIdentifier: myAlarmCellIdentifier, for: indexPath) as? MyAlarmTableViewCell else { return UITableViewCell() }
                cell.dayRepeatLabel.text = "월 수 금"
                cell.timeLabel.text = "08시 30분"
                return cell
    }

}
