//
//  Background&OverlayBootCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct Background_OverlayBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(Color.yellow)
//                    .frame(width:200, height: 200)
//            )
//            .background(
//                Circle()
//                    .fill(Color.green)
//                    .frame(width:300, height: 400)
//            )
        
        Rectangle()
            .frame(width: 100,height: 100)
            .overlay (
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50),alignment: Alignment.center
            )
            .background(
                Rectangle()
                .fill(Color.red)
                .frame(width:150, height: 150), alignment: Alignment.center
                
            
            )
        
        
    }
}

struct Background_OverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        Background_OverlayBootCamp()
    }
}
