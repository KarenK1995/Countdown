//
//  CountdownDetailYellow.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/16/22.
//

import SwiftUI

struct CountdownDetailYellow: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 40)
                CountdownDetail.Header(name: "Alan Birthday", date: "Mon. 14 Dec 2022", secondaryColor: CountdownColors.bdayBrown)
                Spacer()
                CountdownDetail.ProgressCircle(image: Image("birthday-cake"), progressColor: CountdownColors.bdayProgress, fillColor: CountdownColors.bdayBubble, strokeColor: CountdownColors.bdayStroke)
                Spacer()
                CountdownDetail.CountdownNumbers(secondaryColor: CountdownColors.bdayBrown)
                Spacer()
            }
            .background {
                CountdownDetail.BubbleBackground(bubbleColor: CountdownColors.bdayBubble, bgColor: CountdownColors.bdayYellow)
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                CountdownDetail.Toolbar(color: CountdownColors.bdayProgress)
            }
            .toolbarBackground(Color.clear, for: .navigationBar)
        }
    }
}

struct CountdownDetailYellow_Previews: PreviewProvider {
    static var previews: some View {
        CountdownDetailYellow()
    }
}
