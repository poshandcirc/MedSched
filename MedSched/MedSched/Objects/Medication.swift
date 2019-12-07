//
//  Medication.swift
//  MedSched
//
//  Created by Cassandra Stone on 12/7/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import RealmSwift

class Medication: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var screenName = ""
    @objc dynamic var dose = 0
    
    @objc dynamic var frequency = 0
}
