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
    
    public func startAuth(phoneNumber: String, completion: @escaping (Bool) -> Void) {
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { [weak self] verificationId, error in
            guard let verificationId = verificationId, error == nil else {
                return
            }
            self?.verificationId = verificationId
            completion(true)

        }
    }
    
}
