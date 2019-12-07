//
//  RealmHelper.swift
//  MedSched
//
//  Created by Cassandra Stone on 12/7/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHelper {
    
    static func retrieveMedication() -> List<Medication> {
        let realm = try! Realm()
        let results = realm.objects(Medication.self)
        let converted = results.reduce(List<Medication>()) { (list, element) -> List<Medication> in
            list.append(element)
            return list
        }
        return converted
    }
    
    static func retriveRemindersForMedication(_ medication: String) -> List<Reminder> {
        let realm = try! Realm()
        let results = realm.objects(Reminder.self).filter("medication = %@", medication)
        let listResults = results.reduce(List<Reminder>()) { (list, element) ->
            List<Reminder> in
            list.append(element)
            return list
        }
        return listResults
    }
    
    static func retrieveEntriesForMedication(_ medication: String) -> List<Entry> {
        let realm = try! Realm()
        let results = realm.objects(Entry.self).filter("medication = %@", medication)
        let listResults = results.reduce(List<Entry>()) { (list, element) ->
            List<Entry> in
            list.append(element)
            return list
        }
        return listResults
    }
}
