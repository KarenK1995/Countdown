//
//  CountdownList.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownList: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Events")
                        .font(.title)
                        .bold()
                    Text("Countdowns")
                        .font(.largeTitle)
                }
                .padding(.leading)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack {
                            Text("🎂")
                                .font(.system(size: 40))
                                .frame(width: 78, height: 78)
                                .background {
                                    Circle()
                                        .fill(.yellow.opacity(0.2))
                                }
                            Text("Alan Birthday")
                                .font(.title2)
                                .bold()
                            Text("Mon. 14 Dec 2022")
                            Text("24 hour left")
                                .font(.headline)
                                .frame(width: 117, height: 34)
                                .background {
                                    Capsule()
                                        .fill(.yellow.opacity(0.2))
                                }
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.8)
                                .foregroundColor(Color(white: 0.9))
                                .shadow(radius: 8, x: -3, y: 3)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.white)
                                }
                        }
                        
                        VStack {
                            Text("🎉")
                                .font(.system(size: 40))
                                .frame(width: 78, height: 78)
                                .background {
                                    Circle()
                                        .fill(.blue.opacity(0.2))
                                }
                            Text("Kelly Party")
                                .font(.title2)
                                .bold()
                            Text("Mon. 14 Dec 2022")
                            Text("45 day left")
                                .font(.headline)
                                .frame(width: 117, height: 34)
                                .background {
                                    Capsule()
                                        .fill(.blue.opacity(0.2))
                                }
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.8)
                                .foregroundColor(Color(white: 0.9))
                                .shadow(radius: 8, x: -3, y: 3)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.white)
                                }
                        }
                        
                        VStack {
                            Text("🤝")
                                .font(.system(size: 40))
                                .frame(width: 78, height: 78)
                                .background {
                                    Circle()
                                        .fill(.green.opacity(0.2))
                                }
                            Text("Meeting")
                                .font(.title2)
                                .bold()
                            Text("Mon. 14 Dec 2022")
                            Text("24 hour left")
                                .font(.headline)
                                .frame(width: 117, height: 34)
                                .background {
                                    Capsule()
                                        .fill(.green.opacity(0.2))
                                }
                        }
                        .frame(width: 155, height: 213)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.8)
                                .foregroundColor(Color(white: 0.9))
                                .shadow(radius: 8, x: -3, y: 3)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.white)
                                }
                        }
                    }
                    .padding()
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Relationship")
                        .font(.title)
                        .bold()
                    Text("Counter")
                        .font(.largeTitle)
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
                                .font(.title)
                                .fontWeight(.semibold)
                            Text("You have been together for")
                                .textCase(.uppercase)
                            Text("8 years and 2 days")
                                .font(.headline)
                                .frame(width: 169, height: 34)
                                .background {
                                    Capsule()
                                        .fill(.pink.opacity(0.2))
                                }
                        }
                    }
                    .padding(.leading)
                    
                    Text("In other words")
                        .textCase(.uppercase)
                        .padding(.leading)
                    
                    HStack {
                        Text("96 Months")
                        Spacer()
                        Text("417 Weeks")
                        Spacer()
                        Text("2924 Days")
                    }
                    .font(.headline)
                    .padding(.leading)
                }
                .frame(width: 345, height: 189)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 0.8)
                        .foregroundColor(Color(white: 0.9))
                        .shadow(radius: 8, x: -3, y: 3)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                        }
                }
                .padding(.horizontal)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading ) {
                    HStack(spacing: 25) {
                        Circle()
                            .fill(.gray.opacity(0.1))
                            .frame(width: 48, height: 48)
                            .overlay {
                                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                            }
                        
                        Circle()
                            .fill(.gray.opacity(0.1))
                            .frame(width: 48, height: 48)
                            .overlay {
                                Image(systemName: "square.and.pencil")
                                    .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                                    .fontWeight(.heavy)
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
