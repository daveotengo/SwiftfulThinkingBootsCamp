//
//  ExtractSubviewBootcampl.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 14/06/2023.
//

import SwiftUI

struct ExtractSubviewBootcampl: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255)).ignoresSafeArea()
           contentLayer
        }
    }
    
    var contentLayer: some View{
        HStack{
            ExtractedView(title: "Apples", count: 2, bacgroundColor: .red)
            ExtractedView(title: "Apples", count: 2, bacgroundColor: .yellow)
            ExtractedView(title: "Apples", count: 2, bacgroundColor: .green)
        }
    }
}

struct ExtractSubviewBootcampl_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcampl()
    }
}

struct ExtractedView: View {
    let title: String
    let count: Int
    let bacgroundColor: Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
            
        }
        .frame(width: 100, height: 100)
        .background(bacgroundColor)
        .cornerRadius(10)
    }
}
