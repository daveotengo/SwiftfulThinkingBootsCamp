//
//  PickerBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct PickerBootscamp: View {
    //@State var selection : String = "1"
    @State var selection : String = "Most Recent"

    @State var filterOptions: [String] = [
    "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor =  UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        VStack {
            HStack {
                
                Picker(
                    selection: $selection,
                    
                    content: {
                       
                        ForEach(filterOptions.indices, content: { index in
                            
                            HStack {
                                Text(filterOptions[index])
                            }
                            .tag(filterOptions[index])
                            
                        })


                    }, label: {
                        HStack {
                            Text("Filter: ")
                            Text(selection)
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding()
                        .cornerRadius(10)
                        .shadow(color: Color.blue, radius: 10, x: 0, y: 10)
                    }
                )
                //.background(Color.gray.opacity(0.3))
                //.cornerRadius(10)
                .pickerStyle(SegmentedPickerStyle())
            }
                
              
            
        }
        
        
        
        
        
//        VStack {
//            HStack {
//
//                Text("Age")
//                Text(selection)
//            }
//
//                Picker(
//                    selection: $selection, content: {
//
//                        ForEach(18..<100, content: { number in
//
//                            Text("\(number)").tag("\(number)")
//
//                        })
//
//
//                    }, label: {
//                        Text("Picker")
//                    }
//                )
//                .background(Color.gray.opacity(0.3))
//                .pickerStyle(WheelPickerStyle())
//
//        }
    }
}

struct PickerBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootscamp()
    }
}
