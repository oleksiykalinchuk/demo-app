//
//  View+IF.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 16.11.2023.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func `if`<Transform: View>( _ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
