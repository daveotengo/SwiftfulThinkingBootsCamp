//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana", "Watermelon"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath){
            ScrollView{
                VStack(spacing: 40){
                    
                    Button("Super segue"){
                        stackPath.append(contentsOf: [
                        "Coconut","Watermelon","Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self){ fruit in
                        NavigationLink(value: fruit, label: {
                            Text("Click Me: \(fruit)")
                        })
                    }
                    
                    ForEach(0..<10){ x in
                        NavigationLink(value: x, label: {
                            Text("Click Me: \(x)")
                        })
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self){ value in
                
                MySecondScreen(value: value)
                
            }
            .navigationDestination(for: String.self){ value in
                Text("ANOTHER SCREEN: \(value)")
                
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN")
    }
    var body: some View {
        Text("Screen \(value)")
    }
}



struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
