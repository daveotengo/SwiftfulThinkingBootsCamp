//
//  ResizeableSheetBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct ResizeableSheetBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large

    var body: some View {
        
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
                .presentationDetents([.fraction(0.2), .height(600), .medium, .large], selection: $detents)
                //.presentationDetents([.height(100 )])
                //.presentationDetents([.fraction(0.5), .medium, .large])
                //.presentationDetents([.medium, .large])
                //.presentationDragIndicator(.hidden)
                //.interactiveDismissDisabled()
        }
        .onAppear{
            showSheet = true
        }
    }
}
    
struct MyNextView:  View {
    @Binding var detents :  PresentationDetent
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            //Text("Hello world")
            VStack{
                Button("20%"){
                    detents = .fraction(0.2)
                }
                Button("600px"){
                    detents = .height(600)
                }
                
                Button("Medium"){
                    detents = .medium
                }
                Button("Large"){
                    detents = .large
                }
            }
            .padding()
        }
    }
}

struct ResizeableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizeableSheetBootcamp()
    }
}
