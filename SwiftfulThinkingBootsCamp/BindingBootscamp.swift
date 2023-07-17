//
//  BindingBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 14/06/2023.
//

import SwiftUI

struct BindingBootscamp: View {
    
    @State  var backgroundColor: Color = .purple
    @State var title: String = "Title"
    
    var body: some View {
        
        ZStack{
            
            backgroundColor
                .ignoresSafeArea(.all)

            VStack{
                Text(title)
                BottonView(backgroundColor: $backgroundColor, title: $title)

            }
        }
        
    }
}

struct BindingBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootscamp()
    }
}

struct BottonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    var body: some View {
        
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "NEW TITLE!!!"
        } label: {
            Text("Press Me")
        }
        .font(.title)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(buttonColor)
        .cornerRadius(10)
    }
}
