//
//  ProgressCircle.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct ProgressCircle: View {
    var image = Image("party-popper")
    var progressColor = CountdownColors.partyProgress
    var fillColor = CountdownColors.partyBubble
    var strokeColor = CountdownColors.partyStroke
    
    var body: some View {
        ZStack {
            Circle()
                .fill(fillColor)
            
            Circle()
                .stroke(lineWidth: 12)
                .foregroundColor(strokeColor)
            
            image
                .resizable()
                .frame(width: 132, height: 132)
            
            Circle()
                .trim(from: 0, to: 0.15)
                .stroke(style: StrokeStyle(lineWidth: 12, lineCap: .round))
                .rotation(Angle(degrees: 90))
                .foregroundColor(progressColor)
        }
        .frame(width: 180, height: 180)
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
