//
//  SMSCodeViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/19.
//

/*
 - 재전송 버튼 기능 구현하기
 - 인증번호 6자리가 입력되면 시작 버튼 활성화되면서 색상 바뀌기
 - 번호 입력칸 옆 타이머 기능 구현하기
 */

import Foundation
import UIKit

class SMSCodeViewController: UIViewController, UITextFieldDelegate {
    
    let mainView = SMSCodeView()
    var code: String = ""
    var timer: Timer?
    var timerNum: Int = 0
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.codeTextField.addTarget(self, action: #selector(codeTextFieldDidChange(_:)), for: .editingChanged)
        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
        
        mainView.codeTextField.delegate = self
        
        startTimer()
    }
    
    func startTimer() {
        
        if timer != nil && timer!.isValid {
            timer!.invalidate()
        }
        
        timerNum = 300
//        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (_) in
//            self.timeCount += 1
//            DispatchQueue.main.async {
//                let timeString = self.makeTimeLabel(count: self.timeCount)
//                self.mainView.timeLabel.text = "\(timeString)"
//            }
//        })
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerCallBack), userInfo: nil, repeats: true)
    }
    
    func makeTimeLabel(count: Int) -> (String) {
        let sec = (count % 3600) % 60
        let min = (count % 3600) / 60
        
        let sec_string = "\(sec)".count == 1 ? "0\(sec)" : "\(sec)"
        let min_string = "\(min)".count == 1 ? "0\(min)" : "\(min)"
        
        
        return "\(min_string):\(sec_string)"
    }
    
    @objc func timerCallBack() {

        DispatchQueue.main.async {
            self.mainView.timeLabel.text = "\(self.makeTimeLabel(count: self.timerNum))"
        }

        if (timerNum == 0) {
            timer?.invalidate()
            timer = nil
        }
        timerNum -= 1
    }
    
    private func textLimit(existingText: String?, newText: String, limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let counter = textLimit(existingText: textField.text, newText: string, limit: 6)
        let btnCounter = textLimit(existingText: textField.text, newText: string, limit: 5)
        if btnCounter == false {
            mainView.nextButton.backgroundColor = .orange
        }
        return counter
        
    }
    
    @objc func codeTextFieldDidChange(_ textfield: UITextField) {
        code = textfield.text ?? ""
        print(code)
    }
    
    
    
    @objc func nextBtnClicked() {
        let number = code
        print(number)
        AuthManager.shared.verifyCode(smsCode: number) { [weak self] success in
            guard success else { return }
            DispatchQueue.main.async {
                let vc = SUNickNameViewController()
                self?.navigationController?.pushViewController(vc, animated: true)
//                vc.modalPresentationStyle = .fullScreen
//                self?.present(vc, animated: true)
            }
        }
    }
}
