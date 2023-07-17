//
//  SliderBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct SliderBootscamp: View {
    @State var sliderValue : Double = 3
    @State var color : Color = .red
    var body: some View {
        VStack{
            Text("Rating")
            Text(
                String(format: "%.0f", sliderValue))
            
            .foregroundColor(color)
            
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {
                   
                    Text("1")
                        .font(.title)
                        .foregroundColor(.orange)
                },
                maximumValueLabel: {
                   
                    Text("5")
                },
                onEditingChanged: {(_) in
                        color = .green
                   })
            .accentColor(.red)
            
        }
    }
}

struct SliderBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootscamp()
    }
}
