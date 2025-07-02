//
//  ContentView.swift
//  Newly Revised 3rd In Brief Edition
//
// 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
//login page to add 

import SwiftUI

struct ContentView: View {
    // State variables to store user inputs
    @State private var motion: String = ""
    @State private var debate: String = ""
    @State private var debate2: String = ""
    @State private var caller: String = ""
    @State private var caller2: String = ""
    @State private var yayVotes: String = ""
    @State private var nayVotes: String = ""
    @State private var abstainVotes: String = ""
  @State private var secondName: String = ""
  @StateObject private var shareData = ShareData()
  
    
    // State variable to track the current page
    @State private var currentPage: Int = 1
    
    var body: some View {
        VStack {
            if currentPage == 1 {
                // Page 1: Motion Input
                Text("Meeting Or ganizer 0.0.1")
               
                Text("#######################")
                Text("Motion->Topic under the discussion")
                Text("I move that ...")

                TextField("Motion by First", text: $motion)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("Enter Seconding Person Name:")
                TextField("Seconding Name", text: $secondName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button("Unanimous Consent", action: {
                    currentPage = 2
                })
            } else if currentPage == 2 {
                // Page 2: Debate Input
                Text("Debate the motion:")
                TextField("Debate", text: $debate)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Debate", text: $debate2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Caller", text: $caller)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Seconding to close debate", text: $caller2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("End the Debate", action: {
                    currentPage = 3
                })
            } else if currentPage == 3 {
                // Page 3: Vote Input
                Text("Enter votes:")
                TextField("Yay", text: $yayVotes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Nay", text: $nayVotes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Abstain", text: $abstainVotes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack {
          
                    Spacer()
                    Button("Next", action: {
                        currentPage = 4
                    })
                }
            } else if currentPage == 4 {
                // Page 4: Result
                Text("Motion:")
                Text("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
                Text("\(motion)")
                Text("********************************")
                Text("Seconding Person : \(secondName)")
                Text("the Motion on the floor and Debate")
                Text("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
                Text("Debate: \(debate)")
                Text("Debate: \(debate2)")
                Text(" \(caller) called the question.")
                Text("\(caller2) seconded the motion to call the question.")
                Text("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
                Text("Pass calling the question and Vote main motion")
                Text("**** Motion Carry or Fail *********")
                Text("Votes - Yay: \(yayVotes), Nay: \(nayVotes), Abstain: \(abstainVotes)")
                   // Additional result-related UI or logic can be added here
                HStack {
                    Button("Recount Vote", action: {
                        currentPage = 3
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             })
                    Spacer()
                    Button("Amend Motion", action: {
                        currentPage = 1
                    })
 
                }
            }
        }
        .padding()
    }
}




#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}




