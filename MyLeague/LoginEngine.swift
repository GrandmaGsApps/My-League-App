//
//  LoginEngine.swift
//  MyLeague
//
//  Created by Watson, Gabi on 8/2/18.
//  Copyright © 2018 Watson, Gabi. All rights reserved.
//

import Foundation

class LoginEngine {
    private var profiles = [Profile]() //replace with DB space
    private var userIDCount = 0
    
    init(){
        //mock user
        addNewUser(un: "gabi", pw: "pass")
    }
    
    func addNewUser(un : String, pw : String){
        let newLogin = Profile(un: un, pw: pw, id: userIDCount)
        profiles.append(newLogin)
        userIDCount += 1
    }
    
    func validUser(un : String, pw : String) -> Bool{
        let tempUser = Profile(un: un, pw: pw, id: 0)
        if (tempUser.existsIn(users: profiles)){
            print("User Validated")
            return true
        }
        else {
            print("User Not Validated")
            return false
        }
    }
}
