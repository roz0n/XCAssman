//
//  AssetCatalogCell.swift
//  XCAssman
//
//  Created by Arnaldo Rozon on 8/27/23.
//

import SwiftUI

struct AssetCatalogCell: View {
  
  var name: String
  var createdDate: Date
  var modifiedDate: Date
  
  var body: some View {
    HStack(spacing: 16) {
      VStack {
      }
      .frame(width: 42, height: 42)
      .background(RoundedRectangle(cornerRadius: 8).fill(.white.opacity(0.35)))
      
      VStack(alignment: .leading, spacing: 4) {
        Text(name)
          .bold()
        Text(modifiedDate.ISO8601Format())
          .opacity(0.15)
      }
    }
    .padding(.vertical, 6)
    .padding(.horizontal, 4)
  }
  
}
