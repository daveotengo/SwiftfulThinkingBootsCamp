//
//  FocusStateBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 18/06/2023.
//

import SwiftUI

struct FocusStateBootscamp: View {
    
    enum OnboardingField: Hashable{
        case username
        case password
    }
    
    //@FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    //@FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?

    
    var body: some View {
        VStack(spacing: 20){
            TextField("Add your name here", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your pasword here", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .username)

                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀"){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                }else if usernameIsValid{
                    fieldInFocus = .password
//                    usernameInFocus = true
//                    passwordInFocus = false
                }else{
                    fieldInFocus = .username
//                    usernameInFocus = false
//                    passwordInFocus = true
                }

            }
            Spacer()

            
//            Button("TOGGLE FOCUS STATE"){
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                self.usernameInFocus = true
//            }
//        }
        
    }
}

struct FocusStateBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootscamp()
    }
}
