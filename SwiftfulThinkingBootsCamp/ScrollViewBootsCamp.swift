//
//  ScrollViewBootsCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct ScrollViewBootsCamp: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0..<100){ index in
                    ScrollView(
                        .horizontal,showsIndicators: false,
                        content: {
                            
                            LazyHStack {
                                ForEach(0..<100){index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.green)
                                        .frame(width: 150,height: 200)
                                        .shadow(radius: 10)
                                        .padding()
                                }
                            }
                        
                    })
                }
            }
        }

    }
}

struct ScrollViewBootsCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootsCamp()
    }
}
