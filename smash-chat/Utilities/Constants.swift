//
//  Constants.swift
//  smash-chat
//
//  Created by Admin on 9/23/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

//Segues
let TO_LOGIN = "toLogin"
let TO_CREAT_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// URLs
let baseURL = "http://chattychatchat.herokuapp.com/v1/"
let registerURL = "\(baseURL)account/register"

// Aliases
typealias completionHandler = (_ Success: Bool) -> ()

let HEADER = [
    "content-type": "application/json"
]
