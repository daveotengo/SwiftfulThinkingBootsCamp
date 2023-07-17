//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack{
            
            Button(action: {
                
            }, label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            //.buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)
            
            Button("Button Tile"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            Button("Button Tile"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.bordered)
            Button("Button Tile"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            Button("Button Tile"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
