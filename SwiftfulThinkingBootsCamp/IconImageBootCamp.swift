//
//  ImageBootCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 11/06/2023.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            //.scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipped()
      
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
