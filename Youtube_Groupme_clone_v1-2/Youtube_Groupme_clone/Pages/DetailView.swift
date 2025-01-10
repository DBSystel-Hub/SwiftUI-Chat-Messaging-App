//
//  DetailView.swift
//  Youtube_Groupme_clone
//
//  Created by Sopheamen VAN on 3/1/25.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var chat:UserResponse
    // show overlay
    @State private var showOverlay: Bool = false
    @State private var text: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                ChatView(chat: chat, showOverlay: $showOverlay,text: $text)
                    .blur(radius: showOverlay ? 15 : 0)
                
                // show overlay
                if showOverlay {
                    ReactionAfterBlurView(showOverlay: $showOverlay, text: $text)
                }
                
            }
            .toolbar {
                if !showOverlay {
                    // leading
                    ToolbarItem (placement: .topBarLeading){
                       
                        HStack {
                            // back button
                            Button {
                                dismiss()
                            }label: {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 12, height: 12)
                                    .foregroundStyle(.black)
                                
                            }
                            // profile
                            KFImage(URL(string: chat.profileUrl))
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36)
                                .clipShape(Circle())
                           
                            Text(chat.name)
                                .font(.headline)
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 8, height: 8)
                                .foregroundStyle(.black.opacity(0.6))
                                .fontWeight(.semibold)
                            
                        }
                    }
                    // trailing
                    ToolbarItem (placement: .topBarTrailing){
                        HStack (spacing:4){
                            // phone
                            Button {
                                
                            }label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.grayColor)
                                        .frame(width: 36, height: 36)
                                    Image(systemName: "phone")
                                        .foregroundStyle(.black)
                                }
                            }
                            // search
                            Button {
                                
                            }label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.grayColor)
                                        .frame(width: 36, height: 36)
                                    Image(systemName: "magnifyingglass")
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                    }
                }
            }
            
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    DetailView(chat: userData[0])
}

struct ChatView:View {
    var chat:UserResponse
    @Binding var showOverlay:Bool
    @Binding var text:String
    var body: some View {
        ZStack (alignment: .bottom){
            // list chat view item
            ScrollView (showsIndicators: false){
                // date ago
                Text("3:12 PM")
                    .font(.footnote)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 10)
                    .background(Color.grayColor)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.top, 12)
                // list
                ChatBubbleView(chat: chat, showOverlay: $showOverlay,text: $text)
            }
            .padding(.bottom, 60)
            
            // floating view
            FloatingView()
        }
    }
}

struct FloatingView:View {
    var body: some View {
        HStack (spacing:14){
            // plus button
            Button {
                
            }label: {
                ZStack {
                    Circle()
                        .fill(Color.grayColor)
                        .frame(width: 45, height: 45)
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black.opacity(0.6))
                }
            }
            // textfield send message
            HStack {
                TextField("Send a message", text: .constant(""))
                Spacer()
                Button {
                    
                }label: {
                    Image(systemName: "face.smiling")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 26, height: 26)
                        .foregroundStyle(.black.opacity(0.6))
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.gray.opacity(0.3)))
            
            Button {
                
            }label: {
                Image(systemName: "camera")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.black.opacity(0.6))
            }
        }
        .padding(.horizontal)
        .padding(.top, 8)
        .frame(maxWidth: .infinity)
        .background(.white)
    }
}

struct ChatBubbleView:View {
    var chat:UserResponse
    var messageDatas:[MessageResponse] = messageData
    @Binding var showOverlay:Bool
    @Binding var text:String
    var body: some View {
        LazyVStack {
            ForEach(messageDatas) { message in
                Button {
                    // set text to get from text chat message
                    text = message.text
                    showOverlay.toggle()
                }label: {
                    ChatRowView(message: message, chat: chat, text: $text)
                }
                .foregroundStyle(.black)
            }
        }
    }
}

struct ChatRowView:View {
    var message:MessageResponse
    var chat:UserResponse
    @Binding var text:String
    var body: some View {
        if message.isMe {
            HStack {
                KFImage(URL(string: currentData.profileUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
               
                VStack (alignment: .leading){
                    Text(currentData.name)
                        .font(.headline)
                    Text(message.text)
                        .font(.subheadline)
                }
                Spacer()
                if message.isSeen {
                    Image(systemName: "eye")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 8)
        } else {
            // line vertical
            // profile url
            // content name, and text message
            HStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.primaryColor)
                    .frame(width: 4, height: 35)
                KFImage(URL(string: chat.profileUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack (alignment: .leading){
                    Text(chat.name)
                        .font(.headline)
                    Text(message.text)
                        .font(.subheadline)
                }
                Spacer()
                if message.isSeen {
                    Image(systemName: "eye")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

struct ReactionAfterBlurView:View {
    @Binding var showOverlay: Bool
    @Binding var text:String

    // State to track the emoji that is being hovered
    @State private var selectedEmoji: Int? = nil

    var body: some View {
        ZStack {
            // background overlay
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation {
                        showOverlay.toggle()
                    }
                }
            // content
            VStack {
                // reaction
                HStack (spacing:18){
                    ForEach(0..<5, id: \.self) { index in
                        Image("reaction_\(index + 1)") // Your image names
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .scaleEffect(selectedEmoji == index ? 1.5 : 1.0)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                // Set the tapped emoji to be zoomed in
                                selectedEmoji = selectedEmoji == index ? nil : index
                            }
                        }
                        .animation(.easeInOut(duration: 0.2), value: selectedEmoji)
                    }
                   
                  
                }
                .padding(.all, 8)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .frame(maxWidth: .infinity, alignment: .trailing)
                // text
                Text(text)
                    .font(.subheadline)
                    .padding(.all, 8)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(maxWidth: .infinity, alignment: .leading)
                // action popover
                VStack (spacing:12){
                    // pin
                    Button {
                        
                    }label: {
                        HStack {
                            Text("Pin")
                                .font(.subheadline)
                            Spacer()
                            Image(systemName: "pin")
                        }
                        .foregroundStyle(.black)
                    }
                    .padding(.horizontal, 12)
                    Divider()
                    // reply
                    Button {
                        
                    }label: {
                        HStack {
                            Text("Reply")
                                .font(.subheadline)
                            Spacer()
                            Image(systemName: "arrow.uturn.left")
                        }
                        .foregroundStyle(.black)
                    }
                    .padding(.horizontal, 12)
                    Divider()
                    // copy
                    Button {
                        
                    }label: {
                        HStack {
                            Text("Copy")
                                .font(.subheadline)
                               
                            Spacer()
                            Image(systemName: "document.on.document")
                        }
                        .foregroundStyle(.black)
                    }
                    .padding(.horizontal, 12)
                  
                  
                }
                .padding(.vertical, 12)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 200)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding()
        }
    }
}



