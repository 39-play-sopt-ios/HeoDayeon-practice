//
//  PostProfileHeaderView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/10/26.
//

import SwiftUI

struct PostProfileHeaderView: View {
//    let username: String
//    let location: String
    
    let profileImage: Image
    let username: String
    let location: String
    
    var body: some View {
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
}
