//
//  CardBackground.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CardBackground: View {
    let cornerRadius: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(lineWidth: 0.8)
            .foregroundColor(Color(white: 0.9))
            .shadow(radius: 8, x: -3, y: 3)
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(.white)
            }
    }
}

struct CardBackground_Previews: PreviewProvider {
    static var previews: some View {
        CardBackground(cornerRadius: 10)
    }
}
