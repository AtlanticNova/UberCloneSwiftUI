//
//  HomeView.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 08/03/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()

            LocationSearchActivationView()
                .padding(.top, 72)

            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
