//
//  ShapesBootsCamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 11/06/2023.
//

import SwiftUI

struct ShapesBootsCamp: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 20,lineCap: CGLineCap.round, dash:[30]))
           // .trim(from: 0.2, to: 0.1)
            //.stroke(Color.red, lineWidth: 10)
            .frame(width: 200,height: 100,alignment: Alignment.center)
            
        
    }
}

struct ShapesBootsCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootsCamp()
    }
}
