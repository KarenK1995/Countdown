//
//  CountdownWidget.swift
//  CountdownWidget
//
//  Created by Kuba Szulaczkowski on 12/15/22.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct CountdownWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image("birthday-cake")
                    .resizable()
                    .frame(width: 39, height: 39)
                    .frame(width: 55, height: 55)
                    .background {
                        Circle()
                            .fill(CountdownColors.bdayYellow)
                    }
                Spacer()
                Text("Alan Birthday")
                    .font(.custom("Poppins-SemiBold", size: 12))
                Text("Mon. 14 Dec 2022")
                    .font(.custom("Poppins-Medium", size: 9))
                Spacer()
                Text("24 hour left")
                    .font(.custom("Poppins-SemiBold", size: 11))
                    .foregroundColor(CountdownColors.bdayBrown)
                    .frame(width: 88, height: 25)
                    .background {
                        Capsule()
                            .fill(CountdownColors.bdayYellow)
                    }
            }
            Spacer()
        }
        .padding()
    }
}

struct CountdownWidget: Widget {
    let kind: String = "CountdownWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            CountdownWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct CountdownWidget_Previews: PreviewProvider {
    static var previews: some View {
        CountdownWidgetEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
