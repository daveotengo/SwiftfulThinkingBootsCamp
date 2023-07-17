//
//  IfElseBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct IfElseBootscamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 20){
            
            Button("Circlie Button \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            Button("IS LOADING \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if(isLoading){
                ProgressView()
            }
            
            if(showCircle){
                Circle()
                    .frame(width: 200,height: 200)
            }
            
            if(showRectangle){
                Rectangle()
                    .frame(width: 200,height: 200)
            }
            
            if(!showCircle || !showRectangle){
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200,height: 200)
            }
            
        }
    }
}

struct IfElseBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        IfElseBootscamp()
    }
}
