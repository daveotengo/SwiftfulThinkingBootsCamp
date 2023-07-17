//
//  DatePickerBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct DatePickerBootscamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
//        DatePicker("Select Date",
//                   selection: $selectedDate)
//        .padding()
//
//        DatePicker("Select Date",
//                   selection: $selectedDate,
//                   displayedComponents: [.date, .hourAndMinute])
//        .accentColor(Color.pink)
//       //.datePickerStyle(WheelDatePickerStyle())
//        //.datePickerStyle(GraphicalDatePickerStyle())
//
//        .datePickerStyle(CompactDatePickerStyle())
//        .padding()
        VStack {
        Text("Selected Date is: ")
        Text(dateFormatter.string(from: selectedDate))
            .font(.title)
       
            DatePicker("Select Date",
                       selection: $selectedDate, 
                       displayedComponents: [.date, .hourAndMinute])
            .accentColor(Color.pink)
           //.datePickerStyle(WheelDatePickerStyle())
            //.datePickerStyle(GraphicalDatePickerStyle())

            .datePickerStyle(CompactDatePickerStyle())
        .padding()
        }

    }
}

struct DatePickerBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootscamp()
    }
}
