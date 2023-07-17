//
//  SafeAreaInsetsBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct SafeAreaInsetsBootscamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10){_ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            .overlay(alignment: .bottom, content: {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    
            })
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil ,content: {
                Text("Hello")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            })
            
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil ,content: {
                Text("Okay")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            })
            
            
        }
    }
}

struct SafeAreaInsetsBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetsBootscamp()
    }
}
