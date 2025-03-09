//
//  Double.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 09/03/25.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }

    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? ""
    }
}
