//
//  Unwrapoptionals.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct Unwrapoptionals: View {
    @State var displayTest: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserId: String? = "testUser123"
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding!")
                if let text = displayTest{
                    Text(text)
                        .font(.title)
                }
                
                // NEVER FORCE ON WRAP
                
//                Text(displayTest!)
//                    .font(.title)
                
                if(isLoading){
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData()
            }
        }

    }
    
    
    func loadData(){
        if let userId = currentUserId{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayTest = "This is the new data UserId is: \(userId)"
                isLoading = false
            }
        }else{
            displayTest = "There is no userId"
        }
     
    }
    
    func loadData2(){
        guard let userId = currentUserId else{
            displayTest = "There is no userId"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayTest = "This is the new data UserId is: \(userId)"
            isLoading = false
        }
     
    }
}

struct Unwrapoptionals_Previews: PreviewProvider {
    static var previews: some View {
        Unwrapoptionals()
    }
}
