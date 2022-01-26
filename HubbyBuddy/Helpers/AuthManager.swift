//
//  AuthManager.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/19.
//

import Foundation
import FirebaseAuth

class AuthManager {
    static let shared = AuthManager()
    
    private let auth = Auth.auth()
    private var verificationId: String?
    
    // 휴대폰 번호 입력 후 인증 번호를 받기 위한 코드
    public func startAuth(phoneNumber: String, completion: @escaping (Bool) -> Void) {
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { [weak self] verificationId, error in
            guard let verificationId = verificationId, error == nil else {
                return
            }
            self?.verificationId = verificationId
            completion(true)

        }
    }
    
    // 인증 번호를 받은 후 인증 번호를 인증하는 코드
    public func verifyCode(smsCode: String, completion: @escaping (Bool) -> Void) {
        guard let verificationId = verificationId else {
            return
        }
        
        let credential = PhoneAuthProvider.provider().credential(
            withVerificationID: verificationId, verificationCode: smsCode)
        auth.signIn(with: credential) { result, error in
            guard result != nil, error == nil else {
                completion(false)
                return
            }
            completion(true)
        }
    }
    
}
