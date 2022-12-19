//
//  BubbleBackground.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct BubbleBackground: View {
    var bubbleColor = CountdownColors.partyBubble
    var bgColor = CountdownColors.partyBg
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            Circle()
                .fill(bubbleColor)
                .frame(width: 180, height: 180)
                .offset(x: 200, y: 200)
            
            Circle()
                .fill(bubbleColor)
                .frame(width: 180, height: 180)
                .offset(x: -200, y: -200)
            
            Circle()
                .fill(bubbleColor)
                .frame(width: 180, height: 180)
                .offset(x: 200, y: -340)
        }
    }
}

struct BubbleBackground_Previews: PreviewProvider {
    static var previews: some View {
        BubbleBackground()
    }
}
