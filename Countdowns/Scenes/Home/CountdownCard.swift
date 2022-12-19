//
//  CountdownCard.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CountdownCard: View {
    @Environment(\.editMode) private var editMode
    let name: String
    let color: Color
    let textColor: Color
    let image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 56, height: 56)
                .frame(width: 78, height: 78)
                .background {
                    Circle()
                        .fill(color)
                }
            Text(name)
                .font(.custom("Poppins-SemiBold", size: 15))
            Text("Mon. 14 Dec 2022")
                .font(.custom("Poppins-Medium", size: 12))
            Text("24 hour left")
                .font(.custom("Poppins-SemiBold", size: 15))
                .foregroundColor(textColor)
                .frame(width: 117, height: 34)
                .background {
                    Capsule()
                        .fill(color)
                }
                .overlay {
                    if editMode?.wrappedValue.isEditing == true {
                        ZStack {
                            Capsule()
                                .fill(Color(white: 0.94))
                            Image("edit.circle")
                                .foregroundColor(.blue)
                        }
                    }
                }
        }
        .frame(width: 155, height: 213)
        .background {
            CardBackground(cornerRadius: 20)
        }
        .overlay(alignment: .topLeading) {
            if editMode?.wrappedValue.isEditing == true {
                Image(systemName: "minus.circle.fill")
                    .imageScale(.large)
                    .font(.title3)
                    .foregroundColor(.red)
                    .padding(8)
            }
        }
    }
}

struct CountdownCard_Previews: PreviewProvider {
    static var previews: some View {
        CountdownCard(name: "John's Event", color: .pink, textColor: .brown, image: Image(systemName: "calendar"))
    }
}
