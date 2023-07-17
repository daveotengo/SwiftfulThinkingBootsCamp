//
//  AnimationTransitionsBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct AnimationTransitionsBootscamp: View {
    @State var showScreen : Bool = false
    var body: some View {
        
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showScreen.toggle()
                }
                Spacer()
            }
            
            if(showScreen){
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(
                        .asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
            }
        }
    }
}

struct AnimationTransitionsBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTransitionsBootscamp()
    }
}
