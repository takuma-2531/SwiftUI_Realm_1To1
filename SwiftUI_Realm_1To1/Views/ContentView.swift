//
//  ContentView.swift
//  SwiftUI_Realm_1To1
//
//  Created by 小川卓馬 on 2020/10/26.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var store: ItemStore
  
  var body: some View {
    NavigationView {
      ItemListView(items: store.items)
    }
    
  }

}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
