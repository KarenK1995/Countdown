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
                .fill(.orange.gradient)
                .frame(width: 48, height: 48)
                .overlay {
                    Image(systemName: "crown.fill")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                }
                .overlay(alignment: .topTrailing) {
                    Image(systemName: "checkmark.circle.fill")
                        .imageScale(.large)
                        .foregroundStyle(.white, .mint)
                        .padding(1)
                        .background {
                            Circle()
                                .fill(.white)
                        }
                        .offset(x: 10, y: -10)
                }
            Text("Countdown")
                .font(.title2)
                .bold()
            Text("Subscription")
                .textCase(.uppercase)
                .font(.title2)
                .bold()
                .foregroundColor(.orange)
            Divider()
                .padding(.vertical)
            VStack(alignment: .leading, spacing: 10) {
                Text("Subscription active")
                    .font(.title2)
                    .bold()
                Text("Thank you for choosing to upgrade. You can now enjoy all the features.")
                    .font(.title3)
            }
            Spacer()
                .frame(height: 100)
            Button {
            } label: {
                Text("Great")
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
