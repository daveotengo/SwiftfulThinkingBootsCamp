//
//  KeyboardSubmitButton.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct KeyboardSubmitButtonbootscamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack{
            TextField("Place holder", text: $text)
                .submitLabel(.route)
                .onSubmit{
                    print("Something to the console")
                }
            TextField("Place holder", text: $text)
                .submitLabel(.next)
                .onSubmit{
                    print("Something to the console")
                }
            TextField("Place holder", text: $text)
                .submitLabel(.search)
                .onSubmit{
                    print("Something to the console")
                }
            TextField("Place holder", text: $text)
                .submitLabel(.send)
                .onSubmit{
                    print("Something to the console")
                }
        }
    }
}

struct KeyboardSubmitButtonbootscamp_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardSubmitButtonbootscamp()
    }
}
