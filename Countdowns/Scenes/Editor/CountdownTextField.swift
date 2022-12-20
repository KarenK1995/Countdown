//
//  CountdownTextField.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CountdownTextField: View {
    var label: String
    var prompt: String
    
    var body: some View {
        Group {
            Text(label)
                .font(.custom("Poppins-Medium", size: 16))
            TextField(label, text: .constant(""), prompt: Text(prompt))
                .font(.custom("Poppins-Regular", size: 16))
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(CountdownColors.textXGray)
                        .padding(.trailing)
                }
        }
    }
}

struct CountdownTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            CountdownTextField(label: "Enter text below", prompt: "Enter text")
        }
        .padding()
    }
}
