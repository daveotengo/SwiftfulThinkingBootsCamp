//
//  PopoverBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct PopoverBootscamp: View {
    @State var showSheet : Bool = false

    var body: some View {
        ZStack{
            Color(.orange).ignoresSafeArea()
            
            VStack{
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Button")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 300)
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                })
                Spacer()
                //METHOD 1
//                .fullScreenCover(isPresented: $showSheet) {
//                    NewScreen()
//                }
                
                //            .sheet(isPresented: $showSheet) {
                //                SecondScreen()
                //            }
            }
            
            //METHOD 2
//            ZStack{
//                if(showSheet){
//                    NewScreen(showSheet: $showSheet)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            //METHOD 3
            NewScreen(showSheet: $showSheet)
                .padding(.top, 100)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())


        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showSheet : Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color(.red).ignoresSafeArea()

            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showSheet.toggle()
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

struct PopoverBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootscamp()
    }
}

