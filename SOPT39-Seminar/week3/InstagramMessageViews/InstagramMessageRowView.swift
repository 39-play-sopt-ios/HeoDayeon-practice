//
//  InstagramMessageRowView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI

struct InstagramMessageRowView: View {
    
    var msg: MessageModel
    
    var body: some View {
        HStack (alignment: .center, spacing: 0) {
            Image(msg.profileImageName)
                .resizable()
                .frame(width: 56, height: 56)
                .scaledToFill()
                .clipShape(Circle())
                .padding(.trailing, 12)
            
            VStack (alignment: .leading, spacing: 0) {
                Text("\(msg.nickName)")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.black)
                
                HStack (alignment: .center, spacing: 0) {
                    Text("\(msg.textContent)")
                    
                    
                    Spacer()
                    
                    Text("\(msg.timeText)")
                }
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.gray300)
            }
            
            Image(.icPicture)
                .resizable()
                .frame(width: 23, height: 22)
                .padding(.leading, 32)
        }
    }
    
}
