//
//  MessageData.swift
//  Youtube_Groupme_clone
//
//  Created by Sopheamen VAN on 2/1/25.
//

import Foundation

let messageData: [MessageResponse] = [
    MessageResponse(id: UUID(), isMe: true, text: "Hi, how are you?", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "Let's meet up soon.", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "I'll call you back in a bit.", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "Can you send me the file?", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "I am busy right now.", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "How about we talk later?", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "Call me when you're free.", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "Where should we meet?", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "I'm available now.", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "Let's catch up soon.", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "Busy, can't talk now.", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "How's everything going?", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "Just finished my meeting.", isSeen: false),
    MessageResponse(id: UUID(), isMe: false, text: "Call me when you're done.", isSeen: false),
    MessageResponse(id: UUID(), isMe: true, text: "Let me check that for you.", isSeen: true)
]
