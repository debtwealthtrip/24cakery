//
//  VoteView.swift
//  Newly Revised 3rd In Brief Edition
//
//
//

import Foundation
import SwiftUI


struct VoteView: View {

  @ObservedObject var shareData: ShareData

  
  var body: some View {
    NavigationView{
      VStack{
        Text("Enter votes:")
        TextField("Yay", text:  $shareData.yayVotes)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("Nay", text:  $shareData.nayVotes)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        TextField("Abstain", text:  $shareData.abstainVotes)
          .textFieldStyle(RoundedBorderTextFieldStyle())
        HStack {
          Spacer()
          NavigationLink(destination: lastView(shareData: shareData)) {
            Text("Go Next")
             
          }
          
        }
      } .padding()
    } .navigationBarBackButtonHidden(true)
  }
}
