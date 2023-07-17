//
//  ForeachBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct ForeachBootcamp: View {
    let data: [String] = ["Hello","Hi","Hellow Every One"]
    let mystring: String = "Hello"
    var body: some View {
        ScrollView{
            VStack{
                ForEach(data.indices) { index in
                    Text("\(data[index]): \(index)")
                    
                }
                
                ForEach(0..<100){
                    index in
                    Circle()
                        .frame(width: 100,height: 50)
                        .foregroundColor(Color.gray)
                    
                    
                }
            }
        }
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}
