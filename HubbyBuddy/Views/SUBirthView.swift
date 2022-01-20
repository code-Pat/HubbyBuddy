//
//  SUBirthView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/20.
//

import Foundation
import SnapKit
import UIKit

class SUBirthView: UIView {
    
    let datePicker = UIDatePicker()
    
    let welcomLabel = UILabel()
    
    let birthView = UIView()
    let yearView = UIView()
    let yearTextField = UITextField()
    let yearLabel = UILabel()
    let monthView = UIView()
    let monthTextField = UITextField()
    let monthLabel = UILabel()
    let dayView = UIView()
    let dayTextField = UITextField()
    let dayLabel = UILabel()
    
    let nextButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createDatePicker()
        setup()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func createDatePicker() {
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBtnClicked))
        toolbar.setItems([doneBtn], animated: true)
        
        //assign toolbar
        yearTextField.inputAccessoryView = toolbar
        monthTextField.inputAccessoryView = toolbar
        dayTextField.inputAccessoryView = toolbar
        
        yearTextField.inputView = datePicker
        monthTextField.inputView = datePicker
        dayTextField.inputView = datePicker
        
        datePicker.datePickerMode = .date
        
    }
    
    @objc func doneBtnClicked() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        self.endEditing(true)
        
    }
    
    func setup() {
        
        self.backgroundColor = .systemBackground
        
        welcomLabel.text = "생년월일을 알려주세요"
        welcomLabel.font = .boldSystemFont(ofSize: 20)
        welcomLabel.textAlignment = .center
        welcomLabel.textColor = .black
        
        yearTextField.placeholder = "1990"
        yearTextField.attributedPlaceholder = NSAttributedString(string: yearTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        yearTextField.font = .systemFont(ofSize: 14)
        yearTextField.textAlignment = .left
        
        yearLabel.text = "년"
        yearLabel.font = .systemFont(ofSize: 14)
        yearLabel.textColor = .black
        yearLabel.textAlignment = .left
        
        monthTextField.placeholder = "01"
        monthTextField.attributedPlaceholder = NSAttributedString(string: monthTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        monthTextField.font = .systemFont(ofSize: 14)
        monthTextField.textAlignment = .left
        
        monthLabel.text = "월"
        monthLabel.font = .systemFont(ofSize: 14)
        monthLabel.textColor = .black
        monthLabel.textAlignment = .left
        
        dayTextField.placeholder = "01"
        dayTextField.attributedPlaceholder = NSAttributedString(string: dayTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        dayTextField.font = .systemFont(ofSize: 14)
        dayTextField.textAlignment = .left
        
        dayLabel.text = "일"
        dayLabel.font = .systemFont(ofSize: 14)
        dayLabel.textColor = .black
        dayLabel.textAlignment = .left
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.systemBackground, for: .normal)
        nextButton.backgroundColor = .systemGray
        nextButton.layer.cornerRadius = 12
    }
    
    func setupConstraints() {
        
        addSubview(welcomLabel)
        addSubview(birthView)
        addSubview(yearView)
        addSubview(yearTextField)
        addSubview(yearLabel)
        addSubview(monthView)
        addSubview(monthTextField)
        addSubview(monthLabel)
        addSubview(dayView)
        addSubview(dayTextField)
        addSubview(dayLabel)
        
        welcomLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(185)
            make.centerX.equalToSuperview()
            make.width.equalTo(188)
            make.height.equalTo(32)
        }
        birthView.snp.makeConstraints { make in
            make.top.equalTo(welcomLabel.snp.bottom).offset(80)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(20)
            make.height.equalTo(48)
        }
        yearView.snp.makeConstraints { make in
            make.top.equalTo(birthView.snp.top)
            make.bottom.equalTo(birthView.snp.bottom)
            make.leading.equalTo(birthView.snp.leading)
            make.width.equalTo(100)
        }
        yearTextField.snp.makeConstraints { make in
            make.top.equalTo(yearView.snp.top)
            make.leading.equalTo(yearView.snp.leading)
            make.width.equalTo(80)
        }
        yearLabel.snp.makeConstraints { make in
            make.top.equalTo(yearView.snp.top)
            make.bottom.equalTo(yearView.snp.bottom)
            make.leading.equalTo(yearTextField.snp.trailing)
            make.trailing.equalTo(yearView.snp.trailing)
        }
        monthView.snp.makeConstraints { make in
            make.top.equalTo(birthView.snp.top)
            make.bottom.equalTo(birthView.snp.bottom)
            make.leading.equalTo(yearView.snp.trailing).offset(15)
            make.width.equalTo(100)
        }
        monthTextField.snp.makeConstraints { make in
            make.top.equalTo(monthView.snp.top)
            make.leading.equalTo(monthView.snp.leading)
            make.width.equalTo(80)
        }
        monthLabel.snp.makeConstraints { make in
            make.top.equalTo(monthView.snp.top)
            make.bottom.equalTo(monthView.snp.bottom)
            make.leading.equalTo(monthTextField.snp.trailing)
            make.trailing.equalTo(monthView.snp.trailing)
        }
        dayView.snp.makeConstraints { make in
            make.top.equalTo(birthView.snp.top)
            make.bottom.equalTo(birthView.snp.bottom)
            make.leading.equalTo(monthView.snp.trailing).offset(15)
            make.width.equalTo(100)
        }
        dayTextField.snp.makeConstraints { make in
            make.top.equalTo(dayView.snp.top)
            make.leading.equalTo(dayView.snp.leading)
            make.width.equalTo(80)
        }
        dayLabel.snp.makeConstraints { make in
            make.top.equalTo(dayView.snp.top)
            make.bottom.equalTo(dayView.snp.bottom)
            make.leading.equalTo(dayTextField.snp.trailing)
            make.trailing.equalTo(dayView.snp.trailing)
        }
    }
    
}
