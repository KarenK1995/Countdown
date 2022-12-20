//
//  EditorToolbar.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct EditorToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Image(systemName: "chevron.left")
                .font(.title2)
                .foregroundColor(.black)
        }
        ToolbarItem(placement: .navigationBarTrailing ) {
            Button("Save") {}
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .font(.custom("Poppins-Medium", size: 15))
                .tint(CountdownColors.gradientBlue)
        }
    }
}

struct EditorToolbar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Spacer()
                .toolbar {
                    EditorToolbar()
                }
        }
    }
}
