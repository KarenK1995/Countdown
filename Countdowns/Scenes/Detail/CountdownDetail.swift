//
//  CountdownDetail.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownDetail: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 40)
                CountdownHeader(name: "Kelly Party", date: "Mon. 14 Dec 2022", secondaryColor: CountdownColors.partyDarkTeal)
                Spacer()
                ProgressCircle()
                Spacer()
                CountdownNumbers(secondaryColor: CountdownColors.partyDarkTeal)
                Spacer()
            }
            .background {
                BubbleBackground()
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                DetailToolbar(color: CountdownColors.partyProgress)
            }
            .toolbarBackground(Color.clear, for: .navigationBar)
        }
    }
}

struct CountdownDetail_Previews: PreviewProvider {
    static var previews: some View {
        CountdownDetail()
    }
}
