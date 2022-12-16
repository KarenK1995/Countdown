//
//  CountdownSubscription.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownSubscription: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Circle()
                .fill(.linearGradient(colors: [CountdownColors.gradientYellow, CountdownColors.orange], startPoint: UnitPoint(x: 0.25, y: 0.25), endPoint: UnitPoint(x: 0.75, y: 0.75)))
                .frame(width: 48, height: 48)
                .overlay {
                    Image(systemName: "crown.fill")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                }
                .overlay(alignment: .topTrailing) {
                    Image(systemName: "checkmark.circle.fill")
                        .imageScale(.large)
                        .foregroundStyle(.white, CountdownColors.mint)
                        .padding(1)
                        .background {
                            Circle()
                                .fill(.white)
                        }
                        .offset(x: 10, y: -10)
                }
            Text("Countdown")
                .font(.custom("Poppins-Semibold", size: 24))
            Text("Subscription")
                .textCase(.uppercase)
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(CountdownColors.orange)
            Divider()
                .padding(.vertical)
            VStack(alignment: .leading, spacing: 10) {
                Text("Subscription active")
                    .font(.custom("Poppins-SemiBold", size: 19))
                Text("Thank you for choosing to upgrade. You can now enjoy all the features.")
                    .font(.custom("Poppins-Regular", size: 17))
                    .foregroundColor(CountdownColors.gray)
            }
            Spacer()
                .frame(height: 40)
            Button {
            } label: {
                Text("Great")
                    .font(.custom("Poppins-Regular", size: 15))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
            }
                .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
    }
}

struct CountdownSubscription_Previews: PreviewProvider {
    static var previews: some View {
        Spacer()
            .sheet(isPresented: .constant(true))
                   {
                CountdownSubscription()
                           .presentationDetents([.medium])
            }
    }
}
