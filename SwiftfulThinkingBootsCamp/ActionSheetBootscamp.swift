//
//  ActionSheetBootscamp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 16/06/2023.
//

import SwiftUI

struct ActionSheetBootscamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetsOptions = .isOtherPost
   
    enum ActionSheetsOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
//        Button("Click Me") {
//            showActionSheet.toggle()
//        }
//        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
      
        
        VStack{
            HStack(){
                Circle()
                    .frame(width: 30, height: 30)
                Text("Username")
                Spacer()
                Button(action: {
                    actionSheetOptions = .isOtherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)


    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            
        }
        
        let reportButton: ActionSheet.Button = .default(Text("Report")){
            
        }
        
        let deleteButton: ActionSheet.Button = .default(Text("Delete")){
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        switch actionSheetOptions{
        case .isOtherPost:
                return ActionSheet(
                    title: title,
                    message: nil,
                    buttons: [shareButton, reportButton, cancelButton]
                )
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
            
        }
        
        
        //return ActionSheet(title: Text("This is the title!"))

        //        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .default(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the message"),
//            buttons: [button1,button2,button3]
//        )

    }
}

struct ActionSheetBootscamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootscamp()
    }
}
