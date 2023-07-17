//
//  ModelBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootscamp: View {
//    @State var users : [String] = [
//        "Nick","Emily","Samantha","Chris"
//    ]
    
    @State var users : [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: false),
        UserModel(displayName: "Emily", userName: "itsemily1115", followerCount: 55, isVerified: true),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 355, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris2009", followerCount: 100, isVerified: true)
    ]
    
    var body: some View {
        NavigationView{
            
            List{
                ForEach(users){ user in
                    HStack (spacing: 15){
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
            
//            List{
//                ForEach(users, id: \.self){ name in
//                    HStack (spacing: 15){
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                }
//                .padding(.vertical, 10)
//            }
//            .listStyle(InsetGroupedListStyle())
//            .navigationTitle("Users")
        }
    }
}

struct ModelBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootscamp()
    }
}
