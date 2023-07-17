//
//  StateExtractedFunctions.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 14/06/2023.
//

import SwiftUI
struct StateExtractedFunctions: View {
    
    @State var backgroundColor : Color = .yellow

    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            content_layer
            
        }
       
    }
    
    var content_layer: some View {
        VStack{
            
            Text("Title")
                .font(.largeTitle)
            
            
            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)

            }
                

            
        }
    }
    
    func buttonPressed(){
        backgroundColor = .red

    }
}

struct StateExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        StateExtractedFunctions()
    }
}
