//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI
struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name : String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        
       getFruits()

    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        let fruit4 = FruitModel(name: "Pawpaw", count: 23)
        let fruit5 = FruitModel(name: "Mango", count: 52)
       
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.fruits.append(fruit4)
            self.fruits.append(fruit5)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
}

struct RandomScreen: View {

    @Environment(\.presentationMode) var presentation
    @ObservedObject var fruitsViewModel: FruitViewModel = FruitViewModel()

    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
           
            VStack{
                ForEach(fruitsViewModel.fruits){fruit in
                    
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
            }
        }
    }
    
}

struct ViewModelBootcamp: View {
    //@State var fruits : [FruitModel] = []
    // USE THIS IF PASSING TO SECOND VIEW
    //@ObservedObject var fruitsViewModel: FruitViewModel = FruitViewModel()
    // USER THIS ON CREATION OR ON INIT
    @StateObject var fruitsViewModel: FruitViewModel = FruitViewModel()
    var body: some View {

        NavigationView{
           
                List{
                    if fruitsViewModel.isLoading {
                        ProgressView()
                    }else{
                        ForEach(fruitsViewModel.fruits){fruit in
                            HStack{
                                Text("\(fruit.count)")
                                    .foregroundColor(.red)
                                Text(fruit.name)
                                    .font(.headline)
                                    .bold()
                            }
                            
                        }
                        .onDelete(perform: fruitsViewModel.deleteFruit)
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Fruit List")
//                .onAppear{
//                    fruitsViewModel.getFruits()
//                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Fruit List")
                .navigationBarItems(trailing: NavigationLink(destination: {
                    RandomScreen(fruitsViewModel: fruitsViewModel)
                }, label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                }))
            
        }
    }
    
   
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
