//
//  ContentView.swift
//  XCAssman
//
//  Created by Arnaldo Rozon on 8/27/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationSplitView {
      List(1..<50) { num in
        NavigationLink("Item \(num)", value: num)
      }
      .navigationDestination(for: Int.self) {
        Text("\($0)")
      }
    } detail: {
      Text("Detail")
    }
    .toolbar {
      ToolbarItemGroup(placement: .primaryAction) {
        Spacer()
        
        Button {
          print("Tapped add button")
        } label: {
          Image(systemName: "plus")
        }
      }
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
