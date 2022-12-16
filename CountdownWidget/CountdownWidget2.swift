//
//  CountdownWidget.swift
//  CountdownWidget
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import WidgetKit
import SwiftUI

struct CountdownWidget2EntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image("party-popper")
                    .resizable()
                    .frame(width: 39, height: 39)
                    .frame(width: 55, height: 55)
                    .background {
                        Circle()
                            .fill(CountdownColors.partyBlue)
                    }
                Spacer()
                Text("Kelly Party")
                    .font(.custom("Poppins-SemiBold", size: 12))
                Text("Mon. 14 Dec 2022")
                    .font(.custom("Poppins-Medium", size: 9))
                Spacer()
                Text("24 hour left")
                    .font(.custom("Poppins-SemiBold", size: 11))
                    .foregroundColor(CountdownColors.partyTeal)
                    .frame(width: 88, height: 25)
                    .background {
                        Capsule()
                            .fill(CountdownColors.partyBlue)
                    }
            }
            Spacer()
        }
        .padding()
    }
}

struct CountdownWidget2: Widget {
    let kind: String = "CountdownWidget2"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            CountdownWidget2EntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct CountdownWidget2_Previews: PreviewProvider {
    static var previews: some View {
        CountdownWidget2EntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
