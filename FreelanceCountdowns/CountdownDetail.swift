//
//  CountdownDetail.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownDetail: View {
    
    struct Header: View {
        let name: String
        let date: String
        let secondaryColor: Color
        
        var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 9) {
                    Text(name)
                        .font(.custom("Poppins-Bold", size: 29))
                    Text(date)
                        .font(.custom("Poppins-Medium", size: 22))
                        .foregroundColor(secondaryColor)
                }
                Spacer()
            }
            .padding(.leading)
        }
    }
    
    struct CountdownNumbers: View {
        let secondaryColor: Color
        
        var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("1")
                        .font(.custom("Poppins-Bold", size: 57))
                    Text("Years")
                        .font(.custom("Poppins-Medium", size: 24))
                        .foregroundColor(secondaryColor)
                }
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("20")
                            .font(.custom("Poppins-Bold", size: 30))
                        Text("Day")
                            .font(.custom("Poppins-Medium", size: 15))
                            .foregroundColor(secondaryColor)
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 2) {
                        Text("15")
                            .font(.custom("Poppins-Bold", size: 30))
                        Text("Hour")
                            .font(.custom("Poppins-Medium", size: 15))
                            .foregroundColor(secondaryColor)
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 2) {
                        Text("26")
                            .font(.custom("Poppins-Bold", size: 30))
                        Text("Minute")
                            .font(.custom("Poppins-Medium", size: 15))
                            .foregroundColor(secondaryColor)
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 2) {
                        Text("05")
                            .font(.custom("Poppins-Bold", size: 30))
                        Text("seconds")
                            .font(.custom("Poppins-Medium", size: 15))
                            .foregroundColor(secondaryColor)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
    
    struct ProgressCircle: View {
        var image = Image("party-popper")
        var progressColor = CountdownColors.partyProgress
        var fillColor = CountdownColors.partyBubble
        var strokeColor = CountdownColors.partyStroke
        
        var body: some View {
            ZStack {
                Circle()
                    .fill(fillColor)
                
                Circle()
                    .stroke(lineWidth: 12)
                    .foregroundColor(strokeColor)
                
                image
                    .resizable()
                    .frame(width: 132, height: 132)
                
                Circle()
                    .trim(from: 0, to: 0.15)
                    .stroke(style: StrokeStyle(lineWidth: 12, lineCap: .round))
                    .rotation(Angle(degrees: 90))
                    .foregroundColor(progressColor)
            }
            .frame(width: 180, height: 180)
        }
    }
    
    struct BubbleBackground: View {
        var bubbleColor = CountdownColors.partyBubble
        var bgColor = CountdownColors.partyBg
        
        var body: some View {
            ZStack {
                bgColor
                    .ignoresSafeArea()
                
                Circle()
                    .fill(bubbleColor)
                    .frame(width: 180, height: 180)
                    .offset(x: 200, y: 200)
                
                Circle()
                    .fill(bubbleColor)
                    .frame(width: 180, height: 180)
                    .offset(x: -200, y: -200)
                
                Circle()
                    .fill(bubbleColor)
                    .frame(width: 180, height: 180)
                    .offset(x: 200, y: -340)
            }
        }
    }
    
    struct Toolbar: ToolbarContent {
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
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 40)
                Header(name: "Kelly Party", date: "Mon. 14 Dec 2022", secondaryColor: CountdownColors.partyDarkTeal)
                Spacer()
                ProgressCircle()
                Spacer()
                CountdownNumbers(secondaryColor: CountdownColors.partyDarkTeal)
                Spacer()
            }
            .background {
                BubbleBackground()
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                Toolbar(color: CountdownColors.partyProgress)
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
