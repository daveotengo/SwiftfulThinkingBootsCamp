//
//  AnimationsBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct AnimationsBootcamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation (
                    Animation.default
                        .repeatForever(autoreverses: true)
                ){
                    isAnimated.toggle()
                }
                    
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ?  20 : 55)
                .fill(isAnimated ? .green : .purple)
                .frame(width: isAnimated ? 100 : 200 , height: isAnimated ? 100 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 300 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
