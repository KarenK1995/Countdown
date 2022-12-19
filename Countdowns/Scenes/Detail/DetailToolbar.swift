//
//  DetailToolbar.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct DetailToolbar: ToolbarContent {
    let color: Color
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Image(systemName: "chevron.left")
                .font(.title2)
                .foregroundColor(.black)
                .padding(.top)
        }
        ToolbarItem(placement: .navigationBarTrailing ) {
            HStack(spacing: 25) {
                Circle()
                    .fill(.white)
                    .frame(width: 39, height: 39)
                    .overlay {
                        Image("share")
                            .foregroundColor(color)
                    }
                
                Image("edit")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .frame(width: 39, height: 39)
                    .background {
                        Circle()
                            .fill(.white)
                    }
                    .foregroundStyle(color, color)
            }
            .padding(.top)
        }
    }
}

struct DetailToolbar_Previews: PreviewProvider {
    static var previews: some View {
        Spacer().toolbar {
            DetailToolbar(color: .red)
        }
    }
}
