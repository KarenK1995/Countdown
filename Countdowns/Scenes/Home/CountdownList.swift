//
//  CountdownList.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownList: View {
    @Environment(\.editMode) private var editMode
    
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
                        CountdownCard(name: "Alan Birthday", color: CountdownColors.bdayYellow, textColor: CountdownColors.bdayBrown, image: Image("birthday-cake"))
                            .environment(\.editMode, editMode)
                        CountdownCard(name: "Kelly Party", color: CountdownColors.partyBlue, textColor: CountdownColors.partyTeal, image: Image("party-popper"))
                            .environment(\.editMode, editMode)
                        CountdownCard(name: "Christmas", color: CountdownColors.xmasGreen, textColor: CountdownColors.partyTeal, image: Image("christmas-tree"))
                            .environment(\.editMode, editMode)
                        
                        VStack {
                            Image("premium")
                                .resizable()
                                .frame(width: 78, height: 78)
                            Text("Unlimited")
                                .font(.custom("Poppins-SemiBold", size: 15))
                            Text("countdowns")
                                .font(.custom("Poppins-Medium", size: 12))
                            Text("Upgrade")
                                .font(.custom("Poppins-SemiBold", size: 15))
                                .foregroundColor(.white)
                                .frame(width: 117, height: 34)
                                .background {
                                    Capsule()
                                        .fill(.linearGradient(colors: [CountdownColors.gradientYellow, CountdownColors.orange], startPoint: UnitPoint(x: -0.25, y: 0.25), endPoint: UnitPoint(x: 1, y: 0.75)))
                                }
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            CardBackground(cornerRadius: 20)
                        }
                        
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
                    HStack {
                        Image("1")
                            .resizable()
                            .frame(width: 110, height: 110)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack(alignment: .leading) {
                            Text("Adam & Lily")
                                .font(.custom("Poppins-SemiBold", size: 18))
                            Text("You have been together for")
                                .textCase(.uppercase)
                                .tracking(0.47)
                                .font(.custom("Poppins-Medium", size: 12))
                                .foregroundColor(CountdownColors.midGray)
                            Text("8 years and 2 days")
                                .font(.custom("Poppins-SemiBold", size: 14))
                                .foregroundColor(CountdownColors.darkMagenta)
                                .frame(width: 169, height: 34)
                                .background {
                                    Capsule()
                                        .fill(CountdownColors.lightPink)
                                }
                        }
                    }
                    .padding(.leading)
                    if editMode?.wrappedValue.isEditing == true {
                        HStack {
                            Spacer()
                            Capsule()
                                .fill(CountdownColors.lightRed)
                                .frame(width: 117, height: 34)
                            .overlay {
                                Image(systemName: "minus.circle.fill")
                                    .imageScale(.large)
                                    .foregroundColor(.red)
                            }
                            Spacer()
                            ZStack {
                                Capsule()
                                    .fill(Color(white: 0.94))
                                Image("edit.circle")
                                    .imageScale(.large)
                                    .foregroundColor(.blue)
                            }
                            .frame(width: 117, height: 34)
                            Spacer()
                        }
                    } else {
                        Group {
                            Text("In other words")
                                .textCase(.uppercase)
                                .font(.custom("Poppins-Medium", size: 12))
                                .tracking(0.47)
                                .foregroundColor(CountdownColors.midGray)
                                .padding(.leading)
                            
                            HStack {
                                Text("96 Months")
                                Spacer()
                                Text("417 Weeks")
                                Spacer()
                                Text("2924 Days")
                            }
                            .font(.custom("Poppins-SemiBold", size: 14))
                            .padding(.horizontal)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 189)
                .background {
                    CardBackground(cornerRadius: 20)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .toolbar {
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
                            withAnimation {
                                if editMode?.wrappedValue.isEditing == true {
                                    editMode?.wrappedValue = .inactive
                                } else {
                                    editMode?.wrappedValue = .active
                                }
                            }
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
    }
}

struct CountdownList_Previews: PreviewProvider {
    static var previews: some View {
        CountdownList()
    }
}
