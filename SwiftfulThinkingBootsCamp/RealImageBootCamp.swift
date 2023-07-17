//
//  SwiftUIView.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 11/06/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("images-3")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .scaledToFill()
            .frame(width: 300,height: 300)
            //.clipped()
            //.cornerRadius(30)
            .clipShape(Circle())
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
