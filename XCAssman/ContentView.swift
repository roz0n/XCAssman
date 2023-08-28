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
        NavigationLink(value: num) {
          AssetCatalogCell(name: "Test App", createdDate: Date.now, modifiedDate: Date.now)
        }
      }
      .navigationDestination(for: Int.self) {
        Text("\($0)")
      }
    } detail: {
      VStack {
        Image(systemName: "magazine.fill")
          .padding(.bottom, 4)
        Text("No Catalogs")
          .bold()
        Text("The asset catalogs you add will appear here")
          .opacity(0.5)
      }
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
