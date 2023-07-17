//
//  Init&Enum.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct Init_Enum: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack (spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
    
    
}

struct Init_Enum_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Init_Enum(count: 100, fruit: .apple)
            Init_Enum(count: 46, fruit: .orange)
        }
    }
}
