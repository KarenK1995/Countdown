//
//  CountdownUpsell.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownUpsell: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Level up.")
                    Text("Go Premium.")
                }
                Spacer()
            }
            .font(.title)
            
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Features")
                        .font(.title2)
                    Label {
                        Text("Remove ads")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.orange)
                    }
                    Label {
                        Text("Unlimited countdowns")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.orange)
                    }
                    Label {
                        Text("Widget for home screen")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.orange)
                    }
                }
                Spacer()
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 0.8)
                    .foregroundColor(Color(white: 0.9))
                    .shadow(radius: 8, x: -3, y: 3)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(white: 0.96))
                    }
            }
            
            Group {
                Text("**$3.5/month** . 7-day free trial")
                Text("Recurring billing . Cancel anytime")
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Billed annually")
                    Text("**$2.25** /year")
                }
                .foregroundColor(.white)
                Spacer()
                Text("Save 30%")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(width: 89, height: 30)
                    .background {
                        Capsule()
                            .fill(.white)
                    }
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.linearGradient(colors: [.blue, .purple], startPoint: UnitPoint(x: 0.25, y: 0.5), endPoint: UnitPoint(x: 0.75, y: 0.5)))
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Billed monthly")
                    Text("**$3.5** /month")
                }
                Spacer()
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue.opacity(0.2))
            }
            
            Group {
                Text("Restore Purchases")
                    .underline()
                    .foregroundColor(.blue)
                
                Text("Monthly Premium Membership offers $3.5 and Yearly Premium Membership offers $27 for unlocking all content, and features, and removind ads. Payment will be charged to iTunes Account at confirmation of purchase. Subscription automatically renews unless cancelled.")
                    .multilineTextAlignment(.center)
                
                Text("Privacy Policy & terms of use")
                    .underline()
            }
        }
        .padding(.horizontal)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "xmark.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
                .padding(.trailing)
        }
    }
}

struct CountdownUpsell_Previews: PreviewProvider {
    static var previews: some View {
        CountdownUpsell()
    }
}
