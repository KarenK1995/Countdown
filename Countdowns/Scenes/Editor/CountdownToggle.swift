//
//  CountdownToggle.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CountdownToggle: View {
    var label: String
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(label, isOn: $isOn)
            .font(.custom("Poppins-Medium", size: 15))
            .tint(.blue)
            .padding(.horizontal)
            .frame(height: 50)
            .background {
                CardBackground(cornerRadius: 10)
            }
    }
}

struct CountdownToggle_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            CountdownToggle(label: "Toggle on or off", isOn: .constant(true))
        }
        .padding()
    }
}
