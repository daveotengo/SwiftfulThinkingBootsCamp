//
//  SafeAreaBootsCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 13/06/2023.
//

import SwiftUI

struct SafeAreaBootsCamp: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Title Goes Here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 100)
                        .shadow(radius: 10)
                        .padding(5)
                }
            }
        }
        //.background(.blue)
        .background(Color.red
            .edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct SafeAreaBootsCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootsCamp()
    }
}
