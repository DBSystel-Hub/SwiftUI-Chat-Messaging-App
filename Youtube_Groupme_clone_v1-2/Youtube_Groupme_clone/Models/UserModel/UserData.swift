//
//  UserData.swift
//  Youtube_Groupme_clone
//
//  Created by Sopheamen VAN on 2/1/25.
//

import Foundation

var currentData = UserResponse(id: UUID(), name: "David Green", profileUrl: "https://plus.unsplash.com/premium_photo-1689977968861-9c91dbb16049?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D", text: "How are you all?", dateAgo: "5 hours ago")

let userData: [UserResponse] = [
    UserResponse(id: UUID(), name: "James Purple", profileUrl: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D", text: "Busy right now!", dateAgo: "1 day"),
    UserResponse(id: UUID(), name: "Work Group", profileUrl: "https://media.licdn.com/dms/image/v2/D5607AQGrwicZea5ENg/group-logo_image-shrink_48x48/group-logo_image-shrink_48x48/0/1675887104057?e=1736762400&v=beta&t=_Q7VwW7qZpsAQoIBLqOfUdeubU6xiewwWvGN8ZOyNbg", text: "How are you all?", dateAgo: "2 hours ago"),
    UserResponse(id: UUID(), name: "Alice Smith", profileUrl: "https://plus.unsplash.com/premium_photo-1688740375397-34605b6abe48?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D", text: "Let's catch up soon!", dateAgo: "just now"),
    UserResponse(id: UUID(), name: "Project Team", profileUrl: "https://media.licdn.com/dms/image/v2/C4D07AQFxOt7g-UWRCA/group-logo_image-shrink_48x48/group-logo_image-shrink_48x48/0/1631001553965?e=1736762400&v=beta&t=9T10NXFoLAD1vEg3MQLZQK81F3fSKuSSTohPBK06LBU", text: "How are you all?", dateAgo: "4 hours ago"),
    UserResponse(id: UUID(), name: "Sophia Pink", profileUrl: "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D", text: "Call me later.", dateAgo: "1 day"),
    UserResponse(id: UUID(), name: "Team Chat", profileUrl: "https://media.licdn.com/dms/image/v2/D5607AQHmn3CNjAS4ng/group-logo_image-shrink_48x48/group-logo_image-shrink_48x48/0/1663391574738?e=1736762400&v=beta&t=z30DVHrGJhRpoxeyrI3rMp8Vsw3kHtuQyNqwOEifrgM", text: "Call me back later!", dateAgo: "30 minutes ago"),
    UserResponse(id: UUID(), name: "Grace Blue", profileUrl: "https://plus.unsplash.com/premium_photo-1690407617686-d449aa2aad3c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D", text: "Give me a call later!", dateAgo: "2 days"),
    UserResponse(id: UUID(), name: "Family Group", profileUrl: "https://media.licdn.com/dms/image/v2/C5607AQFodP_eVeC7GA/group-logo_image-shrink_48x48/group-logo_image-shrink_48x48/0/1631006874772?e=1736762400&v=beta&t=2fnUYvPajNaTpzUqdVW2LX7djsLN7IA_Mi-b85hVzts", text: "I'm available now.", dateAgo: "1 day"),
    UserResponse(id: UUID(), name: "Emma White", profileUrl: "https://images.unsplash.com/photo-1531256456869-ce942a665e80?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTF8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D", text: "Hey everyone!", dateAgo: "just now")
]
