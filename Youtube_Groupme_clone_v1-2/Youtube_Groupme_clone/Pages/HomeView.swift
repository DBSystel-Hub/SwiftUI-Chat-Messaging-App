//
//  HomeView.swift
//  Youtube_Groupme_clone
//
//  Created by Sopheamen VAN on 2/1/25.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing:20){
                    // search
                    SearchFieldView()
                    // pending request
                    PendingRequestView()
                    // chat list
                    ChatListView()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // leading
                ToolbarItem (placement: .topBarLeading){
                    Text("Chat")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                // trailing
                ToolbarItem (placement: .topBarTrailing){
                    HStack (spacing:4){
                        // qr
                        Button {
                            
                        }label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.grayColor)
                                    .frame(width: 36, height: 36)
                                Image(systemName: "qrcode")
                                    .foregroundStyle(.black)
                            }
                        }
                        // qr
                        Button {
                            
                        }label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.grayColor)
                                    .frame(width: 36, height: 36)
                                Image(systemName: "plus")
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

struct SearchFieldView:View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFill()
                .frame(width: 22, height: 22)
                .foregroundStyle(.black.opacity(0.5))
            TextField("Search chats and messages", text: .constant(""))
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity)
        .frame(height: 45)
        .background(Color.grayColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct PendingRequestView:View {
    var body: some View {
        HStack {
            HStack (spacing:12){
                // icon and text
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.grayColor)
                        .frame(width: 36, height: 36)
                    Image(systemName: "person.2")
                        .foregroundStyle(.black)
                }
                Text("Pending requests")
                    .font(.headline)
            }
            Spacer()
            // icon right
            Button {
                
            }label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 8, height: 8)
                    .foregroundStyle(.black.opacity(0.6))
            }
        }
    }
}

struct ChatListView:View {
    var userDatas:[UserResponse] = userData
    var body: some View {
        LazyVStack (spacing:14){
            ForEach(userDatas) { chat in
                NavigationLink (destination: DetailView(chat: chat)){
                    ChatListRowView(chat: chat)
                }
            }
        }
    }
}

struct ChatListRowView:View {
    var chat:UserResponse
    var body: some View {
        HStack (spacing:14){
            // profile url
            
            KFImage(URL(string: chat.profileUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
            // content
            VStack(alignment: .leading, spacing: 0) {
                // name and date ago
                HStack {
                    Text(chat.name)
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundStyle(.black)
                    Spacer()
                    Text(chat.dateAgo)
                        .font(.subheadline)
                        .foregroundStyle(.black.opacity(0.6))
                }
                // text
                Text(chat.text)
                    .font(.subheadline)
                    .foregroundStyle(.black.opacity(0.7))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
