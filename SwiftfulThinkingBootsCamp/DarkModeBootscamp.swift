//
//  DarkModeBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct DarkModeBootscamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView(content: {
            ScrollView{
                VStack(spacing: 20){
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    Text("This color is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("Adaptive"))
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green :  .yellow )
                        
                    
                }
            }
            .navigationTitle("Dark Mode Bootscamp")

        }
        
        )
       
    }
}

struct DarkModeBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkModeBootscamp()
                .preferredColorScheme(.light)
            
            DarkModeBootscamp()
                .preferredColorScheme(.dark)
        }
    }
}
