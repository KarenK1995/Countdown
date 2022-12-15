//
//  CountdownEditor.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CardBackground: View {
    let cornerRadius: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(lineWidth: 0.8)
            .foregroundColor(Color(white: 0.9))
            .shadow(radius: 8, x: -3, y: 3)
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(.white)
            }
    }
}

struct CountdownEditor: View {
    var countdownName: some View {
        Group {
            Text("Countdown name")
                .font(.title3)
            TextField("Countdown name", text: .constant(""), prompt: Text("Name your countdown"))
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
        }
    }
    
    var countdownDateTime: some View {
        Group {
            Text("Countdown date")
                .font(.title3)
            DatePicker("Countdown date", selection: .constant(Date.now), displayedComponents: .date)
                .datePickerStyle(.graphical)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            
            Text("Countdown time")
                .font(.title3)
            Toggle("All day", isOn: .constant(false))
                .tint(.blue)
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            DatePicker("Countdown time", selection: .constant(Date.now), displayedComponents: .hourAndMinute)
                .datePickerStyle(.wheel)
                .labelsHidden()
                .frame(maxWidth: .infinity)
                .background {
                    CardBackground(cornerRadius: 10)
                }
        }
    }
    
    var countdownReminders: some View {
        Group {
            Text("Remind me")
                .font(.title3)
            Toggle("When the countdown finishes", isOn: .constant(true))
                .tint(.blue)
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            Toggle("1 day before", isOn: .constant(false))
                .tint(.blue)
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            Toggle("1 week before", isOn: .constant(false))
                .tint(.blue)
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
        }
    }
    
    var countdownColor: some View {
        Group {
            Text("Pick a color")
                .font(.title3)
            ColorPicker("Pick a color", selection: .constant(.blue))
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    countdownName
                    
                    Text("Pick an emoji")
                        .font(.title3)
                    Image(systemName: "plus")
                        .imageScale(.small)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding()
                        .background {
                            Circle()
                                .stroke(lineWidth: 2)
                        }
                        .foregroundColor(.blue)
                    
                    countdownDateTime
                    
                    Group {
                        Text("Repeat")
                            .font(.title3)
                        Toggle("Repeat yearly", isOn: .constant(true))
                            .tint(.blue)
                            .padding(.horizontal)
                            .frame(height: 50)
                            .background {
                                CardBackground(cornerRadius: 10)
                            }
                        
                        countdownReminders
                    }
                    
                    countdownColor
                }
                .padding(.horizontal)
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing ) {
                    Button("Save") {}
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.capsule)
                }
            }
        }
    }
}

struct CountdownEditor_Previews: PreviewProvider {
    static var previews: some View {
        CountdownEditor()
    }
}
