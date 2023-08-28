//
//  XCAssmanApp.swift
//  XCAssman
//
//  Created by Arnaldo Rozon on 8/27/23.
//

import SwiftUI

@main
struct XCAssmanApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .frame(minWidth: 500,
               idealWidth: 750,
               maxWidth: .infinity,
               minHeight: 500,
               idealHeight: 750,
               maxHeight: .infinity,
               alignment: .center)
    }
  }
}
