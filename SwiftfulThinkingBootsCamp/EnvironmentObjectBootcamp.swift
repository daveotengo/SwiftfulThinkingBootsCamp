//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad","iMac","Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self, content: {item in
                    NavigationLink(destination: {
                        DetailView(selectedItem: item)
                    }, label: {
                        Text(item)
                    })
                })
                
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
        
    
    
}

struct DetailView: View{
    let selectedItem: String
    
    var body: some View{
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            //foreground
            NavigationLink(destination: {
                FinalView()
            }, label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding(.horizontal)
                    .padding()
                    .background(.white)
                    .cornerRadius(30)
            })
        }
    }
}


struct FinalView: View{
    @EnvironmentObject var viewModel: EnvironmentViewModel

    var body: some View{
        ZStack{
            //background
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            ScrollView{
                
                VStack(spacing: 20){
                
                    ForEach(viewModel.dataArray, id: \.self, content: {item in
                       
                            Text(item)
                        
                    })
                    
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
