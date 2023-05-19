//
//  LocalAuthorizationService.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 16.05.2023.
//

import Foundation
import LocalAuthentication

class LocalAuthorizationService {
    
    private var context = LAContext()
    private var canUseBiometric = false
    private let policy : LAPolicy = .deviceOwnerAuthenticationWithBiometrics
    private var callback: ((Bool) -> Void)? 
    
    func canUseBiometricAuthentication() -> Bool {
        var error : NSError?
        canUseBiometric = context.canEvaluatePolicy(policy, error: &error)
        if let error = error {
            print(error)
        }
        return canUseBiometric
    }
    
    func authorizeIfPossible(_ authorizationFinished: @escaping (Bool) -> Void) {
        self.callback = authorizationFinished
        if canUseBiometric {
                self.context.evaluatePolicy(self.policy, localizedReason: "Войдите с помощью Face ID") {[weak self] result, error in
                    if let error = error {
                        print(error)
                    }
                    if let authorizationFinished = self?.callback {
                        authorizationFinished(result)
                    }
            }
        }
    }
}
