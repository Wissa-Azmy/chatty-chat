//
//  AuthService.swift
//  smash-chat
//
//  Created by Wissa Azmy on 9/26/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    
    static let instance = AuthService()
    
    var isLoggedIn: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "is_logged_in")
        } set {
            UserDefaults.standard.set(newValue, forKey: "is_logged_in")
        }
    }
    
    var authToken: String {
        get {
            return UserDefaults.standard.string(forKey: "auth_token")!
        } set {
            UserDefaults.standard.set(newValue, forKey: "auth_token")
        }
    }
    
    var userEmail: String {
        get {
            return UserDefaults.standard.string(forKey: "user_email")!
        } set {
            UserDefaults.standard.set(newValue, forKey: "user_email")
        }
    }
    
    private func register(email: String, pass: String, completion: @escaping completionHandler) {
        
        let body = [
            "email": email.lowercased(),
            "password": pass
        ]
        
        Alamofire.request(registerURL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in
            
            if response.error == nil {
                completion(false)
                debugPrint(response.result.error as Any)
            } else {
                completion(true)
            }
        }
    }
    
    
}

















