//
//  BadgesBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct BadgesBootscamp: View {
    var body: some View {
//        List{
//            Text("Hello, World!")
//                .badge(2)
//            Text("Hello, World!")
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        }
        
        TabView{
            Color.green
                .tabItem({
                    Image(systemName: "house")
                    Text("Hello")
                }).badge(20)
            
            Color.indigo
                .tabItem({
                    Image(systemName: "gear")
                    Text("Hello")
                }).badge("New")
            
            Color.red
                .tabItem({
                    Image(systemName: "globe")
                    Text("Hello")
                })
        }
        
    }
}

struct BadgesBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootscamp()
    }
}
