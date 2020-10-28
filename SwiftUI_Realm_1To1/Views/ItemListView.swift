//
//  ItemListView.swift
//  SwiftUI_Realm_1To1
//
//  Created by 小川卓馬 on 2020/10/26.
//

import SwiftUI

struct ItemListView: View {
  @EnvironmentObject var store: ItemStore
  let items: [Item]
  
  var body: some View {
    List {
      Section(header: sectionHeaderView) {
        ForEach(items) { item in
          HStack{
            ItemRowView(item: item)
          }
        }
      }
    }
    .navigationTitle("RealmDBリスト")
  }
  
  var sectionHeaderView: some View {
    HStack {
      Button("追加", action: store.create)
      Spacer()
      Button("全削除", action: store.deleteAll)
    }
  }

}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
      ItemListView(items: ItemMock.itemMock)
    }
}
