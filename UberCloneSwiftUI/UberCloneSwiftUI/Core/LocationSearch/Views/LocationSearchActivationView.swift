//
//  LocationSearchActivationView.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 08/03/25.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)

            Text("Where to?")
                .foregroundStyle(Color(.darkGray))

            Spacer()
        }
        .frame(
            width: UIScreen.main.bounds.width - 64,
            height: 50
        )
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .black, radius: 6)
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
