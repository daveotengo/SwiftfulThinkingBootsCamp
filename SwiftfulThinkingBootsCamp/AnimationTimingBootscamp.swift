//
//  AnimationTimingBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct AnimationTimingBootscamp: View {
    
    @State var isAnimated : Bool = false
    @State var timing : Double = 10
    
    var body: some View {
        
        VStack{
            
            Button("Button") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 70)
                .frame(width: isAnimated ? 100 : 350, height: 100)
                .animation(.spring(
                    response: 0.5, dampingFraction: 0.7, blendDuration: 1.0
                                   ))
            
            RoundedRectangle(cornerRadius: 70)
                .frame(width: isAnimated ? 100 : 350, height: 100)
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 70)
                .frame(width: isAnimated ? 100 : 350, height: 100)
                .animation(Animation.easeOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 70)
                .frame(width: isAnimated ? 100 : 350, height: 100)
                .animation(Animation.easeInOut(duration: timing))
        }
    }
}

struct AnimationTimingBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootscamp()
    }
}
