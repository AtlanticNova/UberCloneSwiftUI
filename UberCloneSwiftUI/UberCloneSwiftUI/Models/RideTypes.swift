//
//  RideTypes.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 09/03/25.
//

import Foundation

enum RideTypes: Int, CaseIterable, Identifiable {
    case uberX
    case uberXL
    case uberBlack

    var id: Int { return rawValue }

    var description: String {
        switch self {
        case .uberX: return "Uber X"
        case .uberXL: return "Uber XL"
        case .uberBlack: return "Uber Black"
        }
    }

    var imageName: String {
        switch self {
        case .uberX: return "uber-x"
        case .uberXL: return "uber-x"
        case .uberBlack: return "uber-black"
        }
    }

    var baseFare: Double {
        switch self {
        case .uberX: return 10000.0
        case .uberXL: return 15000.0
        case .uberBlack: return 20000.0
        }
    }

    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1000.0

        switch self {
        case .uberX: return distanceInMiles * 1500.0 + baseFare
        case .uberXL: return distanceInMiles * 2000.0 + baseFare
        case .uberBlack: return distanceInMiles * 2500.0 + baseFare
        }
    }
}
