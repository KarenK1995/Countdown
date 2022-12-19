//
//  CountdownNumbers.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CountdownNumbers: View {
    let secondaryColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 8) {
                Text("1")
                    .font(.custom("Poppins-Bold", size: 57))
                Text("Years")
                    .font(.custom("Poppins-Medium", size: 24))
                    .foregroundColor(secondaryColor)
            }
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("20")
                        .font(.custom("Poppins-Bold", size: 30))
                    Text("Day")
                        .font(.custom("Poppins-Medium", size: 15))
                        .foregroundColor(secondaryColor)
                }
                Spacer()
                VStack(alignment: .leading, spacing: 2) {
                    Text("15")
                        .font(.custom("Poppins-Bold", size: 30))
                    Text("Hour")
                        .font(.custom("Poppins-Medium", size: 15))
                        .foregroundColor(secondaryColor)
                }
                Spacer()
                VStack(alignment: .leading, spacing: 2) {
                    Text("26")
                        .font(.custom("Poppins-Bold", size: 30))
                    Text("Minute")
                        .font(.custom("Poppins-Medium", size: 15))
                        .foregroundColor(secondaryColor)
                }
                Spacer()
                VStack(alignment: .leading, spacing: 2) {
                    Text("05")
                        .font(.custom("Poppins-Bold", size: 30))
                    Text("seconds")
                        .font(.custom("Poppins-Medium", size: 15))
                        .foregroundColor(secondaryColor)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct CountdownNumbers_Previews: PreviewProvider {
    static var previews: some View {
        CountdownNumbers(secondaryColor: .red)
    }
}
