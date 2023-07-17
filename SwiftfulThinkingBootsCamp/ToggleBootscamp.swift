//
//  ToggleBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct ToggleBootscamp: View {
    @State var toggleIsOn : Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn, label: {
                Text("Change Status")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.mint))

            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootscamp()
    }
}
