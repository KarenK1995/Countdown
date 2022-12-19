//
//  CountdownEditor.swift
//  Countdowns
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import SwiftUI

struct CountdownEditor: View {
    @State private var editingEmoji = false
    
    var countdownName: some View {
        Group {
            Text("Countdown name")
                .font(.custom("Poppins-Medium", size: 16))
            TextField("Countdown name", text: .constant(""), prompt: Text("Name your countdown"))
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
            Toggle("All day", isOn: .constant(false))
                .font(.custom("Poppins-Medium", size: 15))
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
                .font(.custom("Poppins-Medium", size: 16))
            Toggle("When the countdown finishes", isOn: .constant(true))
                .font(.custom("Poppins-Medium", size: 15))
                .tint(.blue)
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            Toggle("1 day before", isOn: .constant(false))
                .font(.custom("Poppins-Medium", size: 15))
                .tint(.blue)
                .padding(.horizontal)
                .frame(height: 50)
                .background {
                    CardBackground(cornerRadius: 10)
                }
            Toggle("1 week before", isOn: .constant(false))
                .font(.custom("Poppins-Medium", size: 15))
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
                    countdownName
                    
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
                    
                    countdownDateTime
                    
                    Group {
                        Text("Repeat")
                            .font(.custom("Poppins-Medium", size: 16))
                        Toggle("Repeat yearly", isOn: .constant(true))
                            .font(.custom("Poppins-Medium", size: 15))
                            .tint(.blue)
                            .padding(.horizontal)
                            .frame(height: 50)
                            .background {
                                CardBackground(cornerRadius: 10)
                            }
                        
                        countdownReminders
                    }
                    
                    countdownColor
                    photoPicker
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
                        .font(.custom("Poppins-Medium", size: 15))
                        .tint(CountdownColors.gradientBlue)
                }
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
