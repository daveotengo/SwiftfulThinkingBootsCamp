//
//  ButtonBootscampl.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 13/06/2023.
//

import SwiftUI


struct ButtonBootscamp: View {
    
    @State var title: String = "This is my Title"

    var body: some View {
        VStack( spacing: 20, content: {
            Text(title)
            Button("Press Me") {
                self.title="Button was Pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title="Button2 was Pressed"

            }, label: {
                Text("Saved".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            
            })
            
            Button(action: {
                self.title="Button3 was Pressed"

            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 19)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(.red))
                    )
            })
            
            Button(action: {
                self.title="Button4 was Pressed"

            }, label: {
                Text("Saved".uppercased())
                    .font(.headline)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                    )
                    
                    
            })

        })
    }
}

struct ButtonBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootscamp()
    }
}
