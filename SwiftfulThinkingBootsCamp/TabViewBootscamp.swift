//
//  TabViewBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct TabViewBootscamp: View {
    @State var selectedTab : Int = 0
    @State var icons : [String] = [
    "heart.fill", "globe","house.fill","person.fill"
    ]
    
    var body: some View {
        
        TabView{
            ForEach(icons, id: \.self, content: { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            })
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection: $selectedTab ){
//
//            HomeView()
//                .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("BROWSE TAB")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag("1")
//
//            Text("PROFILE TAB")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//
//            Text("SETTINGS TAB")
//                .tabItem{
//                    Image(systemName: "gear")
//                    Text("Settings")
//                }
//                .tag(3)
//
//
//        }
        
        
    }

}

struct TabViewBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootscamp()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            //Color.green.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                .foregroundColor(.purple)
                Button(action: {
                    
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.indigo)
                })
                .cornerRadius(10)
            }
        }
       
    }
}
