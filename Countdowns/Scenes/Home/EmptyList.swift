//
//  EmptyList.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/21/22.
//

import SwiftUI

struct EmptyList: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 40)
                
                VStack(alignment: .leading) {
                    Text("Events")
                        .font(.custom("Poppins-SemiBold", size: 24))
                    Text("Countdowns")
                        .font(.custom("Poppins-Regular", size: 24))
                }
                .padding(.leading)
                
                Spacer()
                    .frame(height: 20)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack {
                            Image("add-new")
                                .frame(width: 48, height: 48)
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            CardBackground(cornerRadius: 20)
                        }
                    }
                    .padding()
                }
                
                Spacer()
                    .frame(height: 40)
                
                VStack(alignment: .leading) {
                    Text("Relationship")
                        .font(.custom("Poppins-SemiBold", size: 24))
                    Text("Counter")
                        .font(.custom("Poppins-Regular", size: 24))
                }
                .padding(.leading)
                
                VStack(alignment: .leading) {
                    Image("add-new")
                        .frame(width: 48, height: 48)
                }
                .frame(maxWidth: .infinity, maxHeight: 189)
                .background {
                    CardBackground(cornerRadius: 20)
                }
                .padding(.horizontal)
            }
            .toolbar {
                ListToolbar()
            }
        }
    }
}

struct EmptyList_Previews: PreviewProvider {
    static var previews: some View {
        EmptyList()
    }
}
