//
//  PopupScreen.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct PopupScreenBootsCamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            Color(.purple).ignoresSafeArea()
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(10)
            })
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }

        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color(.red).ignoresSafeArea()

            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(10)
            })
           

        }
    }
}

struct PopupScreenBootsCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopupScreenBootsCamp()
        //SecondScreen()
    }
}
