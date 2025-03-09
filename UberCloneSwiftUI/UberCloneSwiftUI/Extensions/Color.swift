//
//  Color.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 09/03/25.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let backgroundColor = Color("BackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
}
