//
//  NavigationBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct NavigationBootscamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
                NavigationLink("Hello World", destination: MyOtherScreen())
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")

            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(leading: Image(systemName: "person.fill"), trailing: NavigationLink( destination: MyOtherScreen(), label: {
                Image(systemName: "gear")
            })
                .accentColor(.red)
            )
            
        }

    }
}

struct NavigationBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootscamp()
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                //.navigationBarTitleDisplayMode(.inline)
                //.navigationBarHidden(true)
               
            
            VStack{
                Button("BACK BUTTON"){
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here.", destination: Text("3rd Screen"))

            }

            
        }

    }
}
