//
//  ShareData.swift
//  Newly Revised 3rd In Brief Edition
//
//
//

import Foundation
import SwiftUI

class ShareData: ObservableObject {
  @Published var motion: String = ""
  @Published var debate: String = ""
  @Published var debate2: String = ""
  @Published var caller: String = ""
  @Published var caller2: String = ""
  @Published var yayVotes: String = ""
  @Published var nayVotes: String = ""
  @Published var abstainVotes: String = ""
  @Published var secondName: String =  ""
}
