//
//  ToolBarbootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct ToolBarbootcamp: View {
    @State var text : String = ""
    @State private var paths: [String] = []
    var body: some View {
        
        NavigationStack(path: $paths){
            ZStack{
                Color.indigo.ignoresSafeArea()
                
//                ScrollView{
//                    TextField("Place holder", text: $text)
//                        .font(.title)
//                        .frame(height: 20)
//                        .padding()
//                        .background(.gray)
//                        .cornerRadius(10)
//                        .padding()
//
//                    Text("Hey  🥳")
//                        .foregroundColor(Color.white)
//                }
                
                ScrollView{
                    TextField("Place holder", text: $text)
                        .font(.title)
                        .frame(height: 20)
                        .padding()
                        .background(.gray)
                        .cornerRadius(10)
                        .padding()
                        
                    ForEach(0..<10){_ in
                         Rectangle()
                            .fill(.blue)
                            .frame(width: 200, height: 200)
                        
                    }
                }
                
                
            }
            .navigationTitle("Toolbar")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .navigationBarLeading ){
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .navigationBarLeading ){
                    Image(systemName: "house.fill")
                }
                
                ToolbarItem(placement: .navigationBarTrailing ){
                    Image(systemName: "house.fill")
                }
            }
            //.toolbar(.hidden, for:  .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu(content: {
                Button("Screen 1"){
                    paths.append("Screen 1")
                }
                Button("Screen 2"){
                    paths.append("Screen 2")
                }
                Button("Screen 3"){
                    paths.append("Screen 3")
                }
            })
            .navigationDestination(for: String.self){ value in
                Text("New screen \(value)")
            }
        }
    }
}

struct ToolBarbootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarbootcamp()
    }
}
