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
}
