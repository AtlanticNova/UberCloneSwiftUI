//
//  RideRequestView.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 09/03/25.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        VStack {
            Capsule()
                .foregroundStyle(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)

            // MARK: Trip Info View
            HStack {
                // MARK: Indicator View
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8, height: 8)

                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 32)

                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 8, height: 8)
                }

                // MARK: Information View
                VStack(alignment: .leading, spacing: 24) {
                    HStack {
                        Text("Current Location")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)

                        Spacer()

                        Text("1:30 PM")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                    .padding(.bottom, 10)

                    HStack {
                        Text("Starbucks Coffee")
                            .font(.system(size: 16, weight: .semibold))

                        Spacer()

                        Text("1:45 PM")
                            .font(.system(size: 14, weight: .semibold))
                    }
                }
                .padding(.leading, 8)
            }
            .padding()

            Divider()

            // MARK: Ride Type Selection View
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0 ..< 4, id: \.self) { _ in
                        VStack(alignment: .leading) {
                            Image("uber-x")
                                .resizable()
                                .scaledToFit()

                            VStack(spacing: 4) {
                                Text("Uber X")
                                    .font(.system(size: 14, weight: .semibold))

                                Text("$22.04")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding(8)
                        }
                        .frame(width: 112, height: 140)
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }

            Divider()
                .padding(.vertical, 8)

            // MARK: Payment Option View
            HStack(spacing: 12) {
                Text("Visa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(6)
                    .background(.blue)
                    .cornerRadius(4)
                    .foregroundStyle(.white)
                    .padding(.leading)

                Text("**** 1234")
                    .fontWeight(.bold)

                Spacer()

                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
            }
            .frame(height: 50)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .padding(.horizontal)

            // MARK: Request Ride Button
            Button {
                return
            } label: {
                Text("CONFIRM RIDE")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundStyle(.white)
            }
        }
        .padding(.bottom, 24)
        .background(.white)
        .cornerRadius(16)
    }
}

#Preview {
    RideRequestView()
}
