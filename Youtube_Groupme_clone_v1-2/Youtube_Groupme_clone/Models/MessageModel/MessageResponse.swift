//
//  MessageResponse.swift
//  Youtube_Groupme_clone
//
//  Created by Sopheamen VAN on 2/1/25.
//

import Foundation

struct MessageResponse: Identifiable {
    var id = UUID()
    var isMe:Bool
    var text:String
    var isSeen:Bool
}
