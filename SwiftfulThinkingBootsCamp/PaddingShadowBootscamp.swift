//
//  PaddingShadowBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct PaddingShadowBootscamp: View {
    var body: some View {
        
        VStack(alignment: HorizontalAlignment.leading, content :{
            Text("Hello, World!")
                .font(SwiftUI.Font.largeTitle)
                .fontWeight(Font.Weight.semibold)
                //.padding(.bottom,20)
            
            Text("This is the description of what we will do in this screen. It is multiple line and we will allign the text to the leading line")
               

        }) //.background(Color.blue)
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10, x: 0.0,y:0.0
                       ))
        .padding(.horizontal, 10)
        //.background(Color.green)
    }
}

struct PaddingShadowBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingShadowBootscamp()
    }
}
