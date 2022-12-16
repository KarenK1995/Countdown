//
//  CountdownWidget.swift
//  CountdownWidget
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import WidgetKit
import SwiftUI

struct CountdownWidget3EntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "heart.fill")
                .font(.system(size: 60))
                .foregroundColor(CountdownColors.darkMagenta)
                .frame(width: 105, height: 139)
                .background {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(white: 0.92))
                }
            
            VStack(alignment: .leading) {
                Text("Adam & Lily")
                    .font(.custom("Poppins-SemiBold", size: 18))
                
                Text("You have been together for")
                    .textCase(.uppercase)
                    .tracking(0.47)
                    .font(.custom("Poppins-Medium", size: 12))
                    .foregroundColor(CountdownColors.midGray)
                
                Text("8 years and 2 days")
                    .font(.custom("Poppins-SemiBold", size: 14))
                    .foregroundColor(CountdownColors.darkMagenta)
                    .frame(width: 175, height: 34)
                    .background {
                        Capsule()
                            .fill(CountdownColors.lightPink)
                    }
            }
            Spacer()
        }
        .padding(.leading)
    }
}

struct CountdownWidget3: Widget {
    let kind: String = "CountdownWidget3"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            CountdownWidget3EntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct CountdownWidget3_Previews: PreviewProvider {
    static var previews: some View {
        CountdownWidget3EntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
