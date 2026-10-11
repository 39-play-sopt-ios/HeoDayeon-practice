//
//  PostCardView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/10/26.
//

import SwiftUI

struct PostCardView: View {
    @Binding var isLiked: Bool

    let profileImage: Image
    let username: String
    let location: String
    let postImage: Image
    let likesText: String
    let caption: String
    let timeText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            postProfileHeader
            postImageView
            actionIcons
            postInformation

        }
    }
    
    private var postProfileHeader: some View {
        HStack(spacing: 10) {
            profileImage
                .resizable()
                .scaledToFill()
                .frame(width:32, height: 32)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2){
                Text(username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(location)
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            Image(.icMore)
                .font(.system(size: 18))
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 10)
        .frame(width: .infinity)
    }
    
    private var postImageView: some View {
        ZStack (alignment: .topTrailing) {
            postImage
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 375)
                .clipShape(Rectangle())
            
            Image(.icPhotoNumber)
                .resizable()
                .scaledToFill()
                .frame(width: 34, height: 26)
                .padding(EdgeInsets(top:14, leading:0, bottom:0, trailing: 14))
        }
    }
    
    private var actionIcons: some View {
        HStack (spacing: 18) {
            Button {
                isLiked.toggle()
            } label: {
                Image(isLiked ? "ic_likeFilled" : "ic_likeOutlined")
            }
            Image(.icComment)
                .resizable()
                .frame(width: 22, height: 22)
            
            Image(.icMessanger)
                .resizable()
                .frame(width: 23, height: 20)
            
            Spacer()
            
            Image(.icSave)
                .resizable()
                .frame(width: 20, height: 23)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 14)
    }
    
    private var postInformation: some View {
        VStack(alignment: .leading) {
            HStack (spacing: 6) {
                Image("profile_4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 17, height: 17)
                    .clipShape(Circle())
                
                Text(likesText)
                    .font(.system(size: 13))
            }
            .padding(.horizontal, 14)
            
            HStack (spacing: 6) {
                Text("moamoa")
                    .font(.system(size: 13, weight: .bold))
                
                Text(caption)
                    .font(.system(size: 13))
                
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 4)
            
            Text(timeText)
                .font(.system(size: 11))
                .foregroundStyle(.gray)
                .padding(.horizontal, 14)
        }
    }
}
    

#Preview {
    @Previewable @State var isLiked = false
    
    PostCardView(isLiked: $isLiked, profileImage: Image("profile_1"), username: "moa", location: "seoul", postImage: Image("post_1"), likesText: "모아요님 외 7명이 좋아요를 눌렀습니다", caption: "과제 야호~", timeText: "1시간 전")
}
