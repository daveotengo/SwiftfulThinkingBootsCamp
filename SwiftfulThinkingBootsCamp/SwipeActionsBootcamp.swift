//
//  SwipeActionsBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct SwipeActionsBootcamp: View {
    
    @State var fruits : [String] = [
        "apple","orange","banana","peach"
    ]
    
    var body: some View {
        
        List{
            ForEach(fruits, id: \.self){ fruit in
                Text(fruit.capitalized)
                    //.swipeActions(edge: .leading, allowsFullSwipe: true){
                    .swipeActions(edge: .trailing, allowsFullSwipe: true){
                        Button("Archive"){
                            
                        }.tint(.yellow)
                        Button("Save"){
                            
                        }
                        .tint(.green)
                        Button("Junk"){
                            
                        }
                        .tint(.indigo)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true){
                        Button("Share"){
                            
                        }
                        .tint(.indigo)
                    }
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

struct SwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsBootcamp()
    }
}
