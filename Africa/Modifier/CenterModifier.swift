//
//  CenterModifier.swift
//  Africa
//
//  Created by Max Herrera on 9/26/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
    
}
