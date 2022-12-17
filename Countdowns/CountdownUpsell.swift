//
//  CountdownUpsell.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

enum CountdownColors {
    static let orange = Color(red: 1.00, green: 0.54, blue: 0.10)
    static let mint = Color(red: 0.08, green: 0.81, blue: 0.61)
    static let gray = Color(red: 0.39, green: 0.39, blue: 0.40)
    
    static let gradientBlue = Color(red: 0.00, green: 0.48, blue: 1.00)
    static let gradientPurple = Color(red: 0.38, green: 0.06, blue: 0.93)
    static let gradientYellow = Color(red: 1.00, green: 0.85, blue: 0.23)
    
    static let purple = Color(red: 0.18, green: 0.28, blue: 0.97)
    static let lightPink = Color(red: 1.00, green: 0.85, blue: 0.93)
    static let darkMagenta = Color(red: 0.42, green: 0.02, blue: 0.48)
    static let lightBlue = Color(red: 0.86, green: 0.93, blue: 1.00)
    
    static let partyBlue = Color(red: 0.81, green: 0.94, blue: 1.00)
    static let partyTeal = Color(red: 0.05, green: 0.51, blue: 0.75)
    static let partyDarkTeal = Color(red: 0.11, green: 0.35, blue: 0.46)
    static let partyProgress = Color(red: 0.164, green: 0.613, blue: 0.977)
    static let partyBubble = Color(red: 0.707, green: 0.922, blue: 0.98)
    static let partyBg = Color(red: 0.809, green: 0.938, blue: 1)
    static let partyStroke = Color(red: 0.621, green: 0.906, blue: 0.984)
    
    static let bdayYellow = Color(red: 1.00, green: 0.96, blue: 0.83)
    static let bdayBubble = Color(red: 1.00, green: 0.94, blue: 0.76)
    static let bdayStroke = Color(red: 1.00, green: 0.91, blue: 0.68)
    static let bdayProgress = Color(red: 1.00, green: 0.73, blue: 0.04)
    static let bdayBrown = Color(red: 0.35, green: 0.25, blue: 0.21)
    
    static let xmasGreen = Color(red: 0.81, green: 1.00, blue: 0.89)

    static let linkBlue = Color(red: 0.01, green: 0.46, blue: 1.00)
    
    static let borderLightGray = Color(red: 0.95, green: 0.95, blue: 0.97)
    static let lightGray = Color(red: 0.97, green: 0.97, blue: 0.97)
    static let darkGray = Color(red: 0.35, green: 0.35, blue: 0.35)
    static let darkGray2 = Color(red: 0.28, green: 0.28, blue: 0.29)
    static let midGray = Color(red: 0.42, green: 0.42, blue: 0.42)
    
    static let lightRed = Color(red: 1.00, green: 0.86, blue: 0.89)
    static let xGray = Color(red: 0.73, green: 0.73, blue: 0.73)
    static let textXGray = Color(red: 0.56, green: 0.56, blue: 0.58)
    static let imageGray = Color(red: 0.14, green: 0.14, blue: 0.14, opacity: 0.54)
    static let placeholderImageBlue = Color(red: 0.95, green: 0.97, blue: 1.00)
}

struct CountdownUpsell: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 40)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Level up.")
                    Text("Go ") + Text("Premium")
                        .foregroundColor(CountdownColors.orange)
                        .font(.custom("Poppins-Bold", size: 21))
                }
                .font(.custom("Poppins-SemiBold", size: 21))
                .overlay {
                    Circle()
                        .trim(from: 0, to: 0.05)
                        .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round))
                        .rotation(Angle(degrees: -100))
                        .frame(width: 600, height: 600)
                        .offset(x: 18, y: 330)
                }
                Spacer()
            }
            
            Spacer()
                .frame(height: 29)
            
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Features")
                        .font(.custom("Poppins-Medium", size: 18))
                    Label {
                        Text("Remove ads")
                            .foregroundColor(CountdownColors.darkGray2)
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(CountdownColors.orange)
                            .padding(.trailing, -4)
                    }
                    Label {
                        Text("Unlimited countdowns")
                            .foregroundColor(CountdownColors.darkGray2)
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(CountdownColors.orange)
                            .padding(.trailing, -4)
                    }
                    Label {
                        Text("Widget for home screen")
                            .foregroundColor(CountdownColors.darkGray2)
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(CountdownColors.orange)
                            .padding(.trailing, -4)
                    }
                }
                Spacer()
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(CountdownColors.borderLightGray, lineWidth: 1)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(CountdownColors.lightGray)
                    }
            }
            
            Spacer()
                .frame(height: 30)
            
            Group {
                Text("**$3.50/month**")
                    .foregroundColor(CountdownColors.darkGray)
                + Text(". 7-day free trial")
                Text("Recurring billing. Cancel anytime")
            }
            .foregroundColor(CountdownColors.gray)
            
            Spacer()
                .frame(height: 30)
            
            VStack(spacing: 15) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Billed annually")
                        Text("$2.25 ")
                            .font(.custom("Poppins-SemiBold", size: 24))
                        + Text("/year")
                    }
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.white)
                    Spacer()
                    Text("Save 30%")
                        .font(.custom("Poppins-Medium", size: 14))
                        .foregroundColor(CountdownColors.purple)
                        .frame(width: 89, height: 30)
                        .background {
                            Capsule()
                                .fill(Material.thick)
                        }
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.linearGradient(colors: [CountdownColors.gradientBlue, CountdownColors.gradientPurple], startPoint: UnitPoint(x: 0.25, y: 0.5), endPoint: UnitPoint(x: 1, y: 0.5)))
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Billed monthly")
                            .foregroundColor(CountdownColors.darkGray2)
                        Text("$3.50 ")
                            .font(.custom("Poppins-SemiBold", size: 24))
                        + Text("/month")
                            .foregroundColor(CountdownColors.darkGray2)
                    }
                    Spacer()
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(CountdownColors.lightBlue)
                }
            }
            
            VStack(spacing: 16) {
                Text("Restore Purchases")
                    .underline()
                    .foregroundColor(CountdownColors.linkBlue)
                
                Text("Monthly Premium Membership offers $3.5 and Yearly Premium Membership offers $27 for unlocking all content, and features, and removind ads. Payment will be charged to iTunes Account at confirmation of purchase. Subscription automatically renews unless cancelled.")
                    .multilineTextAlignment(.center)
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(CountdownColors.gray)
                
                Text("Privacy Policy & terms of use")
                    .underline()
            }
            
            Spacer()
        }
        .font(.custom("Poppins-Regular", size: 16))
        .padding(.horizontal)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "xmark.circle.fill")
                .font(.largeTitle)
                .foregroundColor(CountdownColors.xGray)
                .padding(.trailing)
        }
    }
}

struct CountdownUpsell_Previews: PreviewProvider {
    static var previews: some View {
        CountdownUpsell()
    }
}
