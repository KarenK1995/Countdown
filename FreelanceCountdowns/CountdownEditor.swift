//
//  CountdownEditor.swift
//  FreelanceCountdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownEditor: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Countdown name")
                    TextField("Countdown name", text: .constant(""), prompt: Text("Name your countdown"))
                    
                    Text("Pick an emoji")
                    
                    Group {
                        Text("Countdown date")
                        DatePicker("Countdown date", selection: .constant(Date.now), displayedComponents: .date)
                            .datePickerStyle(.graphical)
                        
                        Text("Countdown time")
                        Toggle("All day", isOn: .constant(false))
                        DatePicker("", selection: .constant(Date.now), displayedComponents: .hourAndMinute)
                            .datePickerStyle(.wheel)
                    }
                    
                    Group {
                        Text("Repeat")
                        Toggle("Repeat yearly", isOn: .constant(true))
                        
                        Text("Remind me")
                        Toggle("When the countdown finishes", isOn: .constant(true))
                        Toggle("1 day before", isOn: .constant(false))
                        Toggle("1 week before", isOn: .constant(false))
                    }
                    
                    Text("Pick a color")
                    ColorPicker("Pick a color", selection: .constant(.blue))
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
