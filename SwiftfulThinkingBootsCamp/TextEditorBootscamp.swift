//
//  TextEditorBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 16/06/2023.
//

import SwiftUI

struct TextEditorBootscamp: View {
    @State var textEditorText : String = "This is the starting text"
    @State var savedText : String = ""
    var body: some View {

        NavigationView{
            VStack{
                
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                .padding(.top)
                
                Text(savedText)
                Spacer()

            }.padding()
                .background(Color.green)
                .navigationTitle("Text EditorBootsCamp")
           
        }
    }
}

struct TextEditorBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootscamp()
    }
}
