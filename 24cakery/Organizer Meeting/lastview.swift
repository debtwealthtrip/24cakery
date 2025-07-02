//
//  lastview.swift
//  Newly Revised 3rd In Brief Edition
//
//

import Foundation
import SwiftUI

struct lastView: View {

  @ObservedObject var shareData: ShareData

  var body: some View {
    NavigationView{
      VStack{
        Text("Motion:")
        Text("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
        Text("Motion: \(shareData.motion)")
        Text("********************************")
        Text("Seconding Person : \(shareData.secondName)")
        Text("the Motion on the floor and Debate")
        Text("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
        Text("Debate: \(shareData.debate)")
        Text("Debate: \(shareData.debate2)")
        Text(" \(shareData.caller) called the question.")
        Text("\(shareData.caller2) seconded the motion to call the question.")
        Text("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
        Text("Pass calling the question and Vote main motion")
        Text("**** Motion Carry or Fail *********")
        Text("Votes - Yay: \(shareData.yayVotes), Nay: \(shareData.nayVotes), Abstain: \(shareData.abstainVotes)")
        // Additional result-related UI or logic can be added here
        HStack {
          NavigationLink("Recount Vount") {
            VoteView(shareData: shareData)
              .navigationBarBackButtonHidden(true)
          }
          Spacer()
          NavigationLink("Amend Motion"){
            HomeView(shareData: shareData)
          }
        }
      } .padding()
    } .navigationBarBackButtonHidden(true)
  }
}
