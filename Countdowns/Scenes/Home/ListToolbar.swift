//
//  ListToolbar.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/21/22.
//

import SwiftUI

struct ListToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading ) {
            HStack(spacing: 25) {
                Menu {
                    Button("Sort by closest"){}
                    Button("Sort by latest"){}
                } label: {
                    Image("filter")
                        .resizable()
                        .frame(width: 48, height: 48)
                }
                .padding(.trailing, -8)
                
                Button {
                } label: {
                    Image("edit.circle")
                        .resizable()
                        .frame(width: 48, height: 48)
                }
                .padding(.trailing, -8)
                
                Image("add-new")
                    .resizable()
                    .frame(width: 48, height: 48)
            }
            .padding(.top)
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Image("premium")
                .resizable()
                .frame(width: 48, height: 48)
                .padding(.top)
        }

    }
}

struct ListToolbar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Spacer()
                .toolbar {
                    ListToolbar()
                }
        }
    }
}
