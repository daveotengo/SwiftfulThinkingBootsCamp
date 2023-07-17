//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            
            HStack (spacing:0){
                Image(systemName: "xmark")
                Spacer()
                  
                Image(systemName: "gear")

            }
            .font(Font.title)
            .padding(.horizontal)
            Spacer()
               
            Rectangle()
                .frame(height: 55)

        }
        
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
