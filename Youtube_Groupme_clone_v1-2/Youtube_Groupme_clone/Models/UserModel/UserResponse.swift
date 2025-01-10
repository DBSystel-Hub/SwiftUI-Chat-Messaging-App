//
//  UserResponse.swift
//  Youtube_Groupme_clone
//
//  Created by Sopheamen VAN on 2/1/25.
//

import Foundation

struct UserResponse:Identifiable {
    var id = UUID()
    var name:String // can be full name, or group name
    var profileUrl:String
    var text:String // can be text or name with text for eg: Sam Lee: Hey everyone!
    var dateAgo: String // for eg just now, 11 hrs ago, 1 day ago
}
