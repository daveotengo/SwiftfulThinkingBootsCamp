//
//  AppStorageBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct AppStorageBootscamp: View {
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    var body: some View {
       
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save", action: {
                let name: String = "Emily"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            })
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootscamp()
    }
}
