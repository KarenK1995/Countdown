//
//  CountdownEditor.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct EditorToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Image(systemName: "chevron.left")
                .font(.title2)
                .foregroundColor(.black)
        }
        ToolbarItem(placement: .navigationBarTrailing ) {
            Button("Save") {}
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .font(.custom("Poppins-Medium", size: 15))
                .tint(CountdownColors.gradientBlue)
        }
    }
}

struct CountdownTextField: View {
    var label: String
    var prompt: String
    
    var body: some View {
        Group {
            Text(label)
                .font(.custom("Poppins-Medium", size: 16))
            TextField(label, text: .constant(""), prompt: Text(prompt))
                .font(.custom("Poppins-Regular", size: 16))
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(CountdownColors.textXGray)
                        .padding(.trailing)
                }
        }
    }
}

struct CountdownToggle: View {
    var label: String
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(label, isOn: $isOn)
            .font(.custom("Poppins-Medium", size: 15))
            .tint(.blue)
            .padding(.horizontal)
            .frame(height: 50)
            .background {
                CardBackground(cornerRadius: 10)
            }
    }
}

struct CountdownEditor: View {
    @State private var editingEmoji = false
    @State private var allDayEvent = true
    @State private var repeatYearly = true
    @State private var notifyWhenComplete = true
    @State private var notifyDayBefore = false
    @State private var notifyWeekBefore = false
    
    var countdownName: some View {
        CountdownTextField(label: "Countdown name", prompt: "Name your countdown")
    }
    
    var countdownDateTime: some View {
        Group {
            Text("Countdown date")
                .font(.custom("Poppins-Medium", size: 16))
            DatePicker("Countdown date", selection: .constant(Date.now), displayedComponents: .date)
                .datePickerStyle(.graphical)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            
            Text("Countdown time")
                .font(.custom("Poppins-Medium", size: 16))
            CountdownToggle(label: "All day", isOn: $allDayEvent)
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
                .font(.custom("Poppins-Medium", size: 16))
            CountdownToggle(label: "When the countdown finishes", isOn: $notifyWhenComplete)
            CountdownToggle(label: "1 day before", isOn: $notifyDayBefore)
            CountdownToggle(label: "1 week before", isOn: $notifyWeekBefore)
        }
    }
    
    var countdownColor: some View {
        Group {
            Text("Pick a color")
                .font(.custom("Poppins-Medium", size: 16))
            ColorPicker("Color", selection: .constant(.blue))
                .font(.custom("Poppins-Medium", size: 15))
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
        }
    }
    
    var emojiPicker: some View {
        Group {
            Text("Pick an emoji")
                .font(.custom("Poppins-Medium", size: 16))
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
                .onTapGesture {
                    withAnimation {
                        editingEmoji = true
                    }
                }
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    countdownName
                    emojiPicker
                    countdownDateTime
                    Group {
                        Text("Repeat")
                            .font(.custom("Poppins-Medium", size: 16))
                        CountdownToggle(label: "Repeat yearly", isOn: $repeatYearly)
                        countdownReminders
                    }
                    countdownColor
                }
                .padding(.horizontal)
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                EditorToolbar()
            }
        }
        .disabled(editingEmoji)
        .blur(radius: editingEmoji ? 10 : .zero)
        .brightness(editingEmoji ? -0.2 : .zero)
        .overlay {
            if editingEmoji {
                Circle()
                    .fill(.white)
                    .frame(width: 82, height: 82)
                    .overlay {
                        TextField("", text: .constant("😍"))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 50))
                    }
            }
        }
        .overlay(alignment: .topTrailing) {
            if editingEmoji {
                Button("Done") {
                    withAnimation {
                        editingEmoji = false
                    }
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .font(.custom("Poppins-Medium", size: 15))
                .tint(CountdownColors.gradientBlue)
                .padding(.trailing)
            }
        }
    }
}

struct CountdownEditor_Previews: PreviewProvider {
    static var previews: some View {
        CountdownEditor()
    }
}
