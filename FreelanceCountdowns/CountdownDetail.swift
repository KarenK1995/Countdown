//
//  CountdownDetail.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownDetail: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 40)
                
                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Kelly Party")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Mon. 14 Dec 2022")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .opacity(0.7)
                    }
                    Spacer()
                }
                .padding(.leading)
                
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(Color(red: 0.707, green: 0.922, blue: 0.98))
                    
                    Circle()
                        .stroke(lineWidth: 12)
                        .foregroundColor(Color(red: 0.621, green: 0.906, blue: 0.984))
                    
                    Text("🎉")
                        .font(.system(size: 80))
                    
                    Circle()
                        .trim(from: 0, to: 0.15)
                        .stroke(style: StrokeStyle(lineWidth: 12, lineCap: .round))
                        .rotation(Angle(degrees: 90))
                        .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                }
                .frame(width: 180, height: 180)
                
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("1")
                            .font(.system(size: 60))
                            .fontWeight(.heavy)
                        Text("Years")
                            .font(.title)
                            .fontWeight(.semibold)
                            .opacity(0.7)
                    }
                    HStack {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("20")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("Day")
                                .fontWeight(.semibold)
                                .opacity(0.7)
                        }
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text("15")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("Hour")
                                .fontWeight(.semibold)
                                .opacity(0.7)
                        }
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text("26")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("Minute")
                                .fontWeight(.semibold)
                                .opacity(0.7)
                        }
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text("05")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("seconds")
                                .fontWeight(.semibold)
                                .opacity(0.7)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .background {
                ZStack {
                    Color(red: 0.809, green: 0.938, blue: 1)
                        .ignoresSafeArea()
                    
                    Circle()
                        .fill(Color(red: 0.707, green: 0.922, blue: 0.98))
                        .frame(width: 180, height: 180)
                        .offset(x: 200, y: 200)
                    
                    Circle()
                        .fill(Color(red: 0.707, green: 0.922, blue: 0.98))
                        .frame(width: 180, height: 180)
                        .offset(x: -200, y: -200)
                    
                    Circle()
                        .fill(Color(red: 0.707, green: 0.922, blue: 0.98))
                        .frame(width: 180, height: 180)
                        .offset(x: 200, y: -340)
                }
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing ) {
                    HStack(spacing: 25) {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .overlay {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                            }
                        
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .overlay {
                                Image(systemName: "square.and.pencil")
                                    .foregroundColor(Color(red: 0.164, green: 0.613, blue: 0.977))
                                    .fontWeight(.heavy)
                            }
                    }
                    
                }
            }
            .toolbarBackground(Color.clear, for: .navigationBar)
        }
    }
}

struct CountdownDetail_Previews: PreviewProvider {
    static var previews: some View {
        CountdownDetail()
    }
}
