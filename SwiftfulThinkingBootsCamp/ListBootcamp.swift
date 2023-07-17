//
//  ListBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 15/06/2023.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits : [String] = [
        "apple","orange","banana","peach"
    ]
    
    @State var vegies : [String] = [
        "tomatoe","potato","carrot"
    ]
    var body: some View {
        
        NavigationView {
            List{
                Section(header: HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }.font(.title)
                    .foregroundColor(.orange)
                ){
                    ForEach(fruits, id: \.self){fruit in Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: { indices, newOffset in

                        move(indices: indices, newOffset: newOffset)
                    })
                    .listRowBackground(Color.yellow)

                }
                
                Section(header: Text("Veggies")){
                    ForEach(vegies, id: \.self){vegie in Text(vegie.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: { indices, newOffset in

                        move(indices: indices, newOffset: newOffset)
                    })

                }

            }
            .accentColor(.purple)

            //.listStyle(GroupedListStyle())
            //.listStyle(SidebarListStyle())

            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing:  addButton)
        }
        .accentColor(.red)

        
    }
    
    
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("Coconut")
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        }
        )
    }
   
}


struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}


   

