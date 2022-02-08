//
//  SUBirthViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/20.
//

/*
- 다음 버튼 활성화 & 색상 변경
 */

import Foundation
import UIKit

class SUBirthViewController: UIViewController {
    
    let mainView = SUBirthView()
    let datePicker = UIDatePicker()
    var birthYear: String = ""
    var birthMonth: String = ""
    var birthDay: String = ""
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.yearTextField.inputView = datePicker
        mainView.monthTextField.inputView = datePicker
        mainView.dayTextField.inputView = datePicker
        
        setupDatePicker()
        
        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
    }
    
    func setupDatePicker() {
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(selectDate), for: .valueChanged)
    }
    
    @objc func selectDate() {
        let formatter = DateFormatter()
        
        // 년 값 구하기
        formatter.dateStyle = .long
        formatter.dateFormat = "YYYY"
        let yearName = formatter.string(from: datePicker.date)
        mainView.yearTextField.text = yearName
        birthYear = yearName
        
        // 월 값 구하기
        formatter.dateFormat = "MM"
        let monthName = formatter.string(from: datePicker.date)
        mainView.monthTextField.text = monthName
        birthMonth = monthName
        
        // 일 값 구하기
        formatter.dateFormat = "dd"
        let dayName = formatter.string(from: datePicker.date)
        mainView.dayTextField.text = dayName
        birthDay = dayName
        
        mainView.nextButton.backgroundColor = .orange
    }
    
    @objc func nextBtnClicked() {
        let vc = SUEmailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
