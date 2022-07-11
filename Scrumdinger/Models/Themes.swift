//
//  Themes.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/11.
//

import SwiftUI

enum Themes: String {
    
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColour: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple, .teal: return .white
        }
    }

    var mainColour: Color {
        Color(rawValue)
    }

}

