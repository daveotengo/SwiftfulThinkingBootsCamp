//
//  StepperBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct StepperBootscamp: View {
    @State var stepperValue : Int = 10
    @State var widthIncrement : CGFloat = 0
    
    
    var body: some View {
        VStack{
            Stepper("Stepper: \(stepperValue)" , value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
             Stepper("Stepper 2", onIncrement: {
                 incrementWidth(amount: 10)
             }, onDecrement: {
                 incrementWidth(amount: -10)

             })
             .padding(50)

        }
    }
    
    func incrementWidth(amount :CGFloat){
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
        
    }
}

struct StepperBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootscamp()
    }
}
