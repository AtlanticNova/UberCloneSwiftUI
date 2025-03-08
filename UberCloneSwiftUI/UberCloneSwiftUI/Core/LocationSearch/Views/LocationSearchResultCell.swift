//
//  LocationSearchCell.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 08/03/25.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundStyle(.blue)
                .tint(.white)
                .frame(width: 40, height: 40)

            VStack(alignment: .leading, spacing: 4) {
                Text("Starbucks Coffee")
                    .font(.body)

                Text("123 Main St, Cupertino USA")
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)

                Divider()
            }
            .padding(.leading)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultCell()
}
