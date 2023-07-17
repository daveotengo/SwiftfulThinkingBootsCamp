//
//  DocumentationBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 17/06/2023.
//

import SwiftUI

struct DocumentationBootscamp: View {
    // MARK: PROPERTIES
    @State var data: [String] = [
       "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    // MARK: BODY
    
    // Working Copy - things to do
    // 1) Fix the title
    // 2) Fix the alert
    
    // NICK - Working Copy - things to do:
    /*
     1) Fix the title
     2) Fix the alert
     */
    
    var body: some View {

        NavigationView {
            //foregroundLayer
            foregroundLayer
        }
    }
    // MARK: FUNCTIONS
    
    ///Gets an alert with specified title
    ///
    ///This function creates and returns an alert immediately. The Alert wll have a title.
    ///based on the text parameter but wlll not have a message
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi")
    ///```
    ///
    /// - Warning: There is no additional message in this alert
    /// - Parameter text: "This is the title for the alert"
    /// - Returns: "Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    /// This is a foreground Layer that holds a scrollview
    var foregroundLayer: some View {
        ScrollView {
            VStack {
                Text("Hello")
                ForEach(data, id: \.self){ name  in
                    Text(name)
                        .font(.headline)
                }
            }
        }
        .navigationTitle("Documentation")
        .navigationBarItems(trailing: Button("Alert", action: {
            showAlert.toggle()
        }))
        .alert(isPresented: $showAlert, content: {
            getAlert(text: "This is the Alert")
        })
    }
}

struct DocumentationBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootscamp()
    }
}




