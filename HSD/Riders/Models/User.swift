//
//  User.swift
//  HSD
//
//  Created by rightmeow on 12/13/17.
//  Copyright © 2017 rightmeow. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {

    @objc dynamic var user_id = ""
    @objc dynamic var username = ""
    @objc dynamic var first_name = ""
    @objc dynamic var last_name = ""
    @objc dynamic var email = ""
    @objc dynamic var created_at = NSDate()
    @objc dynamic var updated_at: NSDate? = nil
    @objc dynamic var password = ""

    var rides = List<Ride>()
    var sessions = List<Session>()

    override static func primaryKey() -> String? {
        return "user_id"
    }

    convenience init(username: String, first_name: String, last_name: String, email: String, password: String) {
        self.init()
        self.user_id = UUID().uuidString
        self.username = username
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.password = password
        self.created_at = NSDate()
    }

}
