//
//  User.swift
//  ToDoFire
//
//  Created by Maxim Dvortsov on 24.07.17.
//  Copyright © 2017 Maxim Dvortsov. All rights reserved.
//

import Foundation
import Firebase

struct FUser {
    
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
    
}
