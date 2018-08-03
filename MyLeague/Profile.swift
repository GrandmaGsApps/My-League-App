//
//  Profile.swift
//  MyLeague
//
//  Created by Watson, Gabi on 8/2/18.
//  Copyright © 2018 Watson, Gabi. All rights reserved.
//

import Foundation

class Profile {
    private var username : String
    private var password : String
    private var userID : Int
    
    init (un : String, pw : String, id : Int){
        username = un
        password = pw
        userID = id
    }
    
    func existsIn(users : [Profile]) -> Bool {
        var tf = false
        for i in users {
            if (i.username == username && i.password == password){
                tf = true
            }
        }
        return tf
    }

}
