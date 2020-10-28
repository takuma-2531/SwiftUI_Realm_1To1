//
//  ItemDB.swift
//  SwiftUI_Realm_1To1
//
//  Created by 小川卓馬 on 2020/10/26.
//

import RealmSwift

// RealmのDB
class ItemDB: Object {
  @objc dynamic var id = 0
  @objc dynamic var title = ""
  @objc dynamic var number = 0
  
  override static func primaryKey() -> String? {
    "id"
  }
}
