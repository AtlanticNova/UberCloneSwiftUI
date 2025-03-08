//
//  LocationSearchView.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 08/03/25.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""

    var body: some View {
        VStack {
            // MARK: Header View
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)

                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)

                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 6, height: 6)
                }

                // MARK: Text Field
                VStack {
                    TextField(
                        "Current Location",
                        text: $startLocationText
                    )
                    .frame(height: 32)
                    .background(Color(.systemGroupedBackground))

                    TextField(
                        "Where To?",
                        text: $destinationLocationText
                    )
                    .frame(height: 32)
                    .background(Color(.systemGray4))
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)

            Divider()
                .padding(.vertical)

            // MARK: List View
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0 ..< 20, id: \.self) { _ in
                        LocationSearchResultCell()
                    }
                }
            }
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView()
}
