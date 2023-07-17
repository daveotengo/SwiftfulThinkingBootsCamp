//
//  TextfieldBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 16/06/2023.
//

import SwiftUI

struct TextfieldBootscamp: View {
    @State var textFieldText : String = ""
    @State var dataArray : [String] = []
    var body: some View {
        
        NavigationView(content: {
            VStack(content: {
                TextField("Type something Here", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()

                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())

                ForEach(dataArray, id: \.self, content: {data in
                    Text(data)
                    
                })
                Spacer()

            }
                
            
            ).padding()
                .navigationTitle("TextField BootCamp")
        })
        
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3{
            return true
        }
        return false
    }
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootscamp()
    }
}
