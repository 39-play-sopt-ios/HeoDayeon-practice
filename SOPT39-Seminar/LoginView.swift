//
//  LoginView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/3/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Image("logo").padding(.bottom, 65)
            
            Image("profile_v2")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .offset(y: 10)
                .frame(width: 85, height: 85)
                .clipShape(Circle())
                .padding(.bottom, 15)
            
            Text("moamoa")
                .font(.system(size: 14, weight: .semibold))
                .fontDesign(.serif)
                .padding(.bottom, 12)
            
            Button {
                //login
            } label: {
                Text("로그인하기")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(.instagramBlue)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }.padding(.bottom, 30)
            
            Button("계정 전환") {}
                .font(.system(size: 14, weight: .semibold))
                .underline(true)
                .foregroundStyle(.instagramBlue)
                
            Spacer()
            
            Divider()
                .frame(height: 1)
                .background(.gray100)
                .padding(.bottom, 20)
            
            HStack(alignment: .center, spacing: 11) {
                Text("계정이 없으신가요?")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.black.opacity(0.4))
                
                Button {
                //sign in
                } label: {
                    Text("회원가입하기.")
                        .font(.system(size:12, weight: .semibold))
                        .foregroundStyle(.black)
                }

            }
            
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
    }
}

#Preview {
    LoginView()
}
