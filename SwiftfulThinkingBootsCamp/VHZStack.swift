//
//  VHZStack.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 12/06/2023.
//

import SwiftUI

struct VHZStack: View {
    var body: some View {
//        VStack(alignment: SwiftUI.HorizontalAlignment.center, spacing: 0) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 200, height: 100)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 200, height: 100)
//
//        }
        
//        HStack(alignment: VerticalAlignment.center,spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        })
        
//        ZStack( content: {
//            Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 100, height: 100)
//
//                        Rectangle()
//                            .fill(Color.green)
//                            .frame(width: 50, height: 50)
//
//                        Rectangle()
//                            .fill(Color.blue)
//                            .frame(width: 20, height: 20)
//        })
        
//        ZStack( content: {
//            VStack {
//                Rectangle()
//                                .fill(Color.red)
//                            .frame(width: 100, height: 100)
//
//
//                        Rectangle()
//                            .fill(Color.green)
//                            .frame(width: 50, height: 50)
//
//            HStack {
//                Rectangle()
//                                .fill(Color.red)
//                            .frame(width: 100, height: 100)
//
//
//                        Rectangle()
//                            .fill(Color.green)
//                            .frame(width: 50, height: 50)
//                Rectangle()
//                                .fill(Color.blue)
//                            .frame(width: 20, height: 20)
//            }
//            }.background(Color.white)
//        }
//
//        )
//        .frame(width: 350, height: 350)
//        .background(Color.black)
        

        VStack(spacing: 50, content: {
            
        
            ZStack {
                Circle()
                    .frame(width: 100,height: 100)
                    .font(Font.title)
                Text("1")
                    .foregroundColor(Color.white)
            }
            
            Text("1")
                .font(Font.body)
                .foregroundColor(Color.white)
                .background(
                Circle()
                    .frame(width: 100,height: 100)
                )
        })
     
    }
}

struct VHZStack_Previews: PreviewProvider {
    static var previews: some View {
        VHZStack()
    }
}
