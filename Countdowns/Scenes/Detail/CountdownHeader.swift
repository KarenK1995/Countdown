//
//  CountdownHeader.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CountdownHeader: View {
    let name: String
    let date: String
    let secondaryColor: Color
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 9) {
                Text(name)
                    .font(.custom("Poppins-Bold", size: 29))
                Text(date)
                    .font(.custom("Poppins-Medium", size: 22))
                    .foregroundColor(secondaryColor)
            }
            Spacer()
        }
        .padding(.leading)
    }
}

struct CountdownHeader_Previews: PreviewProvider {
    static var previews: some View {
        CountdownHeader(name: "John's Event", date: "Mon Dec 19", secondaryColor: .purple)
    }
}
