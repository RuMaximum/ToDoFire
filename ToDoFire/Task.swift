//
//  Task.swift
//  ToDoFire
//
//  Created by Maxim Dvortsov on 24.07.17.
//  Copyright © 2017 Maxim Dvortsov. All rights reserved.
//

import Foundation
import Firebase

struct Task {
    
    let title: String
    let userId: String
    let ref: DatabaseReference?
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
        //completed = true
    }
    
    // Снэпшот - это по сути снимок данных из JSON
    init(snapshot: DataSnapshot) {
        
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
    
    func convertToDictionary() -> Any {
        return ["title": title, "userId": userId, "completed": completed]
    }
}
