//
//  PostCardView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/10/26.
//

import SwiftUI

struct PostCardView: View {
    @Binding var isLiked: Bool
    @Binding var isSaved: Bool
    @Binding var showSheet: Bool

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
        .frame(maxWidth: .infinity)
    }
    
    private var postImageView: some View {
        ZStack (alignment: .topTrailing) {
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .overlay {
                    postImage
                        .resizable()
                        .scaledToFill()
                }
                .clipped()
            
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
            
            Button {
                isSaved.toggle()
                if isSaved {
                    showSheet = true
                }
            } label: {
                Image(isSaved ? "ic_saveFilled" : "ic_save")
                    .resizable()
                    .frame(width: 20, height: 23)
            }
            .sheet(isPresented: $showSheet) {
                HStack (spacing: 10) {
                    postImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                    VStack (spacing: 4) {
                        Text("Saved")
                            .font(.system(size: 14, weight: .semibold))
                        
                        Text("Private")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    
                    Image(.icSaveFilled)
                        .resizable()
                        .frame(width: 20, height: 23)
                }
                .padding(.horizontal, 20)
                .presentationDetents([.fraction(0.2)])
                .presentationBackground(.white)
                .presentationDragIndicator(.visible)
                
                
            }
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
                Text(username)
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
    @Previewable @State var isSaved = false
    @Previewable @State var showSheet = false
    
    PostCardView(isLiked: $isLiked, isSaved: $isSaved, showSheet: $showSheet, profileImage: Image("profile_1"), username: "moa", location: "seoul", postImage: Image("post_1"), likesText: "모아요님 외 7명이 좋아요를 눌렀습니다", caption: "과제 야호~", timeText: "1시간 전")
}
