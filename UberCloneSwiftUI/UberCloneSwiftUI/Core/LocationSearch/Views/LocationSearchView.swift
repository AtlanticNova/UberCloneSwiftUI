//
//  LocationSearchView.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 08/03/25.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel

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
                        text: $viewModel.queryFragment
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
                    ForEach(viewModel.results, id: \.self) { result in
                        LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    viewModel.selectLocation(result)
                                    mapState = .locationSelected
                                }
                            }
                    }
                }
            }
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView(mapState: .constant(.searchingForLocation))
}
