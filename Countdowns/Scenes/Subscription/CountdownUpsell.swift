//
//  CountdownUpsell.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

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
