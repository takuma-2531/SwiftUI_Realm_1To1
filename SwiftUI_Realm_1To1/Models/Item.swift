//
//  Item.swift
//  SwiftUI_Realm_1To1
//
//  Created by 小川卓馬 on 2020/10/26.
//

import Foundation

struct Item: Identifiable {
  let id: Int
  let title: String
  let number: Int

}

extension Item {
  init(itemDB: ItemDB) {
      id = itemDB.id
      title = itemDB.title
      number = itemDB.number
    }

}
