//
//  FrameBootsCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 11/06/2023.
//

import SwiftUI

struct FrameBootsCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: 100,height: 100,alignment: Alignment.top)
            .background(Color.orange)
            .frame(width: 200)
            .background(Color.purple)
            .frame(maxWidth: .infinity , alignment: Alignment.leading)
            .background(Color.gray)
            .frame(maxHeight:.infinity)
            .background(Color.green)
    }
}

struct FrameBootsCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootsCamp()
    }
}
