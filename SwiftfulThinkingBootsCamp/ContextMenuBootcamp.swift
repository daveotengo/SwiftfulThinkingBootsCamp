//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 16/06/2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor : Color = .blue
    var body: some View {
        VStack(alignment: .leading){
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("SharePost", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .purple
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                HStack{
                    Text("Button3")
                    Image(systemName: "heart.fill")
                }
            })

        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
