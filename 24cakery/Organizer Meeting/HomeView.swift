//
//  HomeView.swift
//  
//
//
//

import Foundation
import SwiftUI

struct HomeView : View {
  
  
  @ObservedObject var shareData: ShareData

  
  var body: some View {
    NavigationStack{
      ZStack{
        VStack {
          // Page 1: Motion Input
          Text("Meeting Organizer 0.0.1")
          Text("#######################")
          Text("Motion->Topic under the discussion")
          Text("I move that ...")
          
          TextField("Motion by First", text: $shareData.motion)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          Text("Enter Seconding Person Name:")
          TextField("Seconding Name", text: $shareData.secondName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          NavigationLink(destination: DebateView(shareData: shareData)) {
            Text("Go Next")
             
          } . navigationBarBackButtonHidden(true)
        }
      }
    }
      .padding()
  }
}







