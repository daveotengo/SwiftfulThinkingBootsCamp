//
//  AlertBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 16/06/2023.
//

import SwiftUI

struct AlertBootscamp: View {
    @State var isShowAlert : Bool = false
    @State var bacgroundColor : Color = .yellow
    //@State var alertTitle : String = ""
    //@State var alertMessage : String = ""
    @State var alertType : MyAlerts? = nil
    
    enum MyAlerts{
        case success
        case error
    }

    var body: some View {
        ZStack{
            bacgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Button1") {
                    isShowAlert.toggle()
                    alertType = .error
                    //alertTitle = "ERROR UPLOADING VIDEO"
                    //alertMessage = "The video could not be uploaded"
                }
                
                Button("Button2") {
                    isShowAlert.toggle()
                    alertType = .success
                    //alertTitle = "SUCCESSFULLY UPLOADING VIDEO"
                    //alertMessage = "Your video is now public"
                }
                
            }
            .alert(isPresented: $isShowAlert) {
                        getAlert()
            //            Alert(title: Text("There was a title"))
        }
    }
        
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
                    return Alert(title: Text("This was successful"), message: nil, dismissButton: .default(Text("Ok"), action: {
                bacgroundColor = .green
            }))
        default :
            return Alert(title: Text("ERROR"))
        }
//       return Alert(title: Text(alertTitle), message: Text(alertMessage), primaryButton: .destructive(Text("Delete"), action: {
//            bacgroundColor = .white
//        }), secondaryButton: .cancel())
    }
}

struct AlertBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootscamp()
    }
}
