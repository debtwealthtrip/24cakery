//
//  Debate.swift
//  Newly Revised 3rd In Brief Edition
//
//

import Foundation
import SwiftUI

struct DebateView: View {
 
  @ObservedObject var shareData: ShareData

  
  var body: some View {
    NavigationView{
      VStack{
        Text("Debate the motion:")
        TextField("Debate", text:  $shareData.debate)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("Debate", text: $shareData.debate2)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("Caller", text: $shareData.caller)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("Seconding to close debate", text:  $shareData.caller2)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        NavigationLink(destination: VoteView(shareData: shareData)) {
          Text("Go Next")
           
        }
      } .padding()
    } .navigationBarBackButtonHidden(true)
  }
}



