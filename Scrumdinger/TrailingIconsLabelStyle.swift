//
//  TrailingIconsLabelStyle.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/12.
//

import Foundation
import SwiftUI

struct TrailingIconsLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            
            configuration.title
            configuration.icon
            
        }
    }
}

extension LabelStyle where Self == TrailingIconsLabelStyle {
    static var trailingIcon: Self { Self() }
}
