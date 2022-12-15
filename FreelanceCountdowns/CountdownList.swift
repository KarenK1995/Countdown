//
//  CountdownList.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownList: View {
    @Environment(\.editMode) private var editMode
    
    struct CountdownCard: View {
        @Environment(\.editMode) private var editMode
        let name: String
        let color: Color
        let emoji: String
        
        var body: some View {
            VStack {
                Text(emoji)
                    .font(.system(size: 40))
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
                                Image(systemName: "pencil.circle.fill")
                                    .imageScale(.large)
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
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Events")
                        .font(.custom("Poppins-SemiBold", size: 24))
                    Text("Countdowns")
                        .font(.custom("Poppins-Regular", size: 24))
                }
                .padding(.leading)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        CountdownCard(name: "Alan Birthday", color: .yellow.opacity(0.2), emoji: "🎂")
                        CountdownCard(name: "Kelly Party", color: .blue.opacity(0.2), emoji: "🎉")
                        CountdownCard(name: "Christmas", color: .green.opacity(0.2), emoji: "🎄")
                        
                        VStack {
                            Image(systemName: "crown.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                                .frame(width: 78, height: 78)
                                .background {
                                    Circle()
                                        .fill(.orange.gradient)
                                }
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
                                        .fill(.orange.gradient)
                                }
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            CardBackground(cornerRadius: 20)
                        }
                        
                        VStack {
                            Circle()
                                .fill(.gray.opacity(0.1))
                                .frame(width: 48, height: 48)
                                .overlay {
                                    Image(systemName: "plus")
                                        .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                                        .fontWeight(.heavy)
                                }
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            CardBackground(cornerRadius: 20)
                        }
                    }
                    .padding()
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Relationship")
                        .font(.custom("Poppins-SemiBold", size: 24))
                    Text("Counter")
                        .font(.custom("Poppins-Regular", size: 24))
                }
                .padding(.leading)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.pink)
                            .frame(width: 110, height: 110)
                            .background {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color(white: 0.92))
                            }
                        
                        VStack(alignment: .leading) {
                            Text("Adam & Lily")
                                .font(.custom("Poppins-SemiBold", size: 18))
                            Text("You have been together for")
                                .textCase(.uppercase)
                                .font(.custom("Poppins-Medium", size: 12))
                            Text("8 years and 2 days")
                                .font(.custom("Poppins-SemiBold", size: 14))
                                .frame(width: 169, height: 34)
                                .background {
                                    Capsule()
                                        .fill(.pink.opacity(0.2))
                                }
                        }
                    }
                    .padding(.leading)
                    if editMode?.wrappedValue.isEditing == true {
                        HStack {
                            Capsule()
                                .fill(.red.opacity(0.2))
                                .frame(width: 117, height: 34)
                            .overlay {
                                Image(systemName: "minus.circle.fill")
                                    .imageScale(.large)
                                    .foregroundColor(.red)
                            }
                            ZStack {
                                Capsule()
                                    .fill(Color(white: 0.94))
                                Image(systemName: "pencil.circle.fill")
                                    .imageScale(.large)
                                    .foregroundColor(.blue)
                            }
                            .frame(width: 117, height: 34)
                        }
                    } else {
                        Group {
                            Text("In other words")
                                .textCase(.uppercase)
                                .font(.custom("Poppins-Medium", size: 12))
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
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading ) {
                    HStack(spacing: 25) {
                        Menu {
                            Button("Sort by closest"){}
                            Button("Sort by latest"){}
                        } label: {
                            Circle()
                                .fill(.gray.opacity(0.1))
                                .frame(width: 48, height: 48)
                                .overlay {
                                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                                }
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
                            Circle()
                                .fill(.gray.opacity(0.1))
                                .frame(width: 48, height: 48)
                                .overlay {
                                    Image(systemName: "square.and.pencil")
                                        .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                                        .fontWeight(.heavy)
                                }
                        }
                        
                        
                        Circle()
                            .fill(.gray.opacity(0.1))
                            .frame(width: 48, height: 48)
                            .overlay {
                                Image(systemName: "plus")
                                    .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                                    .fontWeight(.heavy)
                            }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Circle()
                        .fill(.orange.gradient)
                        .frame(width: 48, height: 48)
                        .overlay {
                            Image(systemName: "crown.fill")
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                        }
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
