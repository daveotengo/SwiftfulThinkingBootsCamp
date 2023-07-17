//
//  TenaryOperaterBootsCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct TenaryOperaterBootsCamp: View {
    @State var startingState: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(startingState.description)") {
                startingState.toggle()
            }
            Text(startingState ? "STARTING STATE" : "ENDING STATE")
            RoundedRectangle(cornerRadius: 20)
                .fill(startingState ? .red : .blue)
                .frame(width: startingState ? 200 : 300, height: startingState ? 100 : 300)
            Spacer()
        }
    }
}

struct TenaryOperaterBootsCamp_Previews: PreviewProvider {
    static var previews: some View {
        TenaryOperaterBootsCamp()
    }
}
