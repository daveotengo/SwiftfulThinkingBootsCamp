//
//  ColorPickerBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct ColorPickerBootscamp: View {
    
    @State var backgroundColor : Color = .cyan
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            ColorPicker(
                "Select a color",
                selection: $backgroundColor,
                supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.brown)
            .font(.headline)
            .padding(50)
        }

    }
}

struct ColorPickerBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootscamp()
    }
}
