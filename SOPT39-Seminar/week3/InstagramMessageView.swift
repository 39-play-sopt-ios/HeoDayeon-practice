//
//  InstagramChatView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI

struct InstagramMessageView: View {
    struct ChatModel: Identifiable {
        let id = UUID()
        let profileImageName: String
        let nickName: String
        let textContent: String
        let timeText: String
    }
    
    private let chats = [
        ChatModel(
            profileImageName: "chat_profile_1",
            nickName: "juju",
            textContent: "안녕하세요 주주예용",
            timeText: "지금"
        ),
        ChatModel(
            profileImageName: "chat_profile_2",
            nickName: "huihui",
            textContent: "반가워용 희희예용",
            timeText: "지금"
        ),
        ChatModel(
            profileImageName: "profile_3",
            nickName: "yupyup",
            textContent: "3차 세미나 렛쮸고",
            timeText: "15m"
        ),
        ChatModel(
            profileImageName: "profile_1",
            nickName: "tacos",
            textContent: "아~~ 재밌다 😂😂😂",
            timeText: "20m"
        ),
        ChatModel(
            profileImageName: "profile_4",
            nickName: "kk_kk",
            textContent: "나의 노래를 들어보실분 나는 케케",
            timeText: "1m"
        ),
        ChatModel(
            profileImageName: "chat_profile_3",
            nickName: "hello_moa",
            textContent: "모아요에 오신 걸 환영",
            timeText: "2h"
        ),
        ChatModel(
            profileImageName: "chat_profile_3",
            nickName: "goTosleep",
            textContent: "쿨쿨...",
            timeText: "4h"
        ),
        ChatModel(
            profileImageName: "chat_profile_3",
            nickName: "hungryMan",
            textContent: "저랑 떵개하실래요?",
            timeText: "5h"
        ),
        ChatModel(
            profileImageName: "chat_profile_3",
            nickName: "moamoayo",
            textContent: "모아요에서 사과 한 입! 앙~",
            timeText: "10h"
        ),
    ]
    
    var body: some View {
        List(chats) { chat in
            HStack (spacing: 0) {
                Image(chat.profileImageName)
                    .resizable()
                    .frame(width: 56, height: 56)
                    .scaledToFill()
                    .clipShape(Circle())
                    .padding(.trailing, 12)
                
                VStack (alignment: .leading, spacing: 0) {
                    Text("\(chat.nickName)")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundStyle(.black)
                    
                    HStack (spacing: 0) {
                        Text("\(chat.textContent)")
                            
                        
                        Spacer()
                        
                        Text("\(chat.timeText)")
                    }
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.gray300)
                }
                
                Image(.icPicture)
                    .resizable()
                    .frame(width: 23, height: 22)
                    .padding(.leading, 32)
            }
            .listRowSeparator(.hidden)
            .listRowInsets(
                EdgeInsets(
                    top: 0,
                    leading: 16,
                    bottom: 16,
                    trailing: 16
                )
            )
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(.white)
    }
    
}

#Preview {
    InstagramMessageView()
}
