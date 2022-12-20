//
//  CountdownRelationshipEditor.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/19/22.
//

import SwiftUI

struct CountdownRelationshipEditor: View {
    @State private var notifyOnSpecialDays = true
    @State private var notifyDayBefore = false
    @State private var notifyWeekBefore = false
    
    var photoPicker: some View {
        Group {
            Text("Pick a Photo")
                .font(.custom("Poppins-Medium", size: 16))
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Image("1")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(CountdownColors.imageGray)
                        }
                        .overlay {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        .padding(4)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 2)
                                .foregroundColor(CountdownColors.linkBlue)
                        }
                    Image("2")
                        .resizable()
                        .frame(width: 108, height: 108)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Image("3")
                        .resizable()
                        .frame(width: 108, height: 108)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                HStack(spacing: 10) {
                    Image("4")
                        .resizable()
                        .frame(width: 108, height: 108)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Image("5")
                        .resizable()
                        .frame(width: 108, height: 108)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.blue, style: StrokeStyle(lineWidth: 1.5, lineCap: .round, dash: [5, 5]))
                        .frame(width: 108, height: 108)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(CountdownColors.placeholderImageBlue)
                        }
                        .overlay {
                            Image("gallery-add")
                                .resizable()
                                .frame(width: 17.65, height: 17.65)
                                .foregroundColor(CountdownColors.linkBlue)
                        }
                }
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    CountdownTextField(label: "Your name", prompt: "Write your name")
                    CountdownTextField(label: "Your love's name", prompt: "Write your love's name")
                    
                    Text("Since when are you together?")
                        .font(.custom("Poppins-Medium", size: 16))
                    DatePicker("Countdown date", selection: .constant(Date.now), displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        .background {
                            CardBackground(cornerRadius: 10)
                        }
                    
                    Group {
                        Text("Remind me")
                            .font(.custom("Poppins-Medium", size: 16))
                        CountdownToggle(label: "Notify me on special days", isOn: $notifyOnSpecialDays)
                        CountdownToggle(label: "1 day before", isOn: $notifyDayBefore)
                        CountdownToggle(label: "1 week before", isOn: $notifyWeekBefore)
                    }
                    
                    photoPicker
                }
                .padding(.horizontal)
            }
            .toolbar {
                EditorToolbar()
            }
        }
    }
}

struct CountdownRelationshipEditor_Previews: PreviewProvider {
    static var previews: some View {
        CountdownRelationshipEditor()
    }
}
