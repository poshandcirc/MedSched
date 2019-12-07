//
//  Entry.swift
//  MedSched
//
//  Created by Cassandra Stone on 12/7/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import RealmSwift

class Entry: Object {
    
    @objc dynamic var medication: Medication? = nil
    @objc dynamic var time: NSDate? = nil
    @objc dynamic var reminder: Reminder? = nil
    
}
