//
//  GroupBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct GroupBootscamp: View {
    var body: some View {
        VStack{
            Text("Hello World")
            
            Group{
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")

            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootscamp()
    }
}
