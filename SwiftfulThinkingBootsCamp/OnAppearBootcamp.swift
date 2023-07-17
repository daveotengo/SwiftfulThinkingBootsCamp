//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack(alignment: .leading, content: {
                    
                    ForEach(0..<50, content: {_ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    })
                })
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is my new text."
                }
            })
            .onDisappear(perform: {
                myText = "Thisi is my ending text."
            })
            .navigationTitle("On Appear: \(count)")
        }
        
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
