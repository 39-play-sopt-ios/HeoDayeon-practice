//
//  InputView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/3/26.
//

import SwiftUI

struct InputView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Image("logo")
                .padding(.bottom, 44)
            
            TextField(
                "이메일",
                text: $email,
                prompt: Text("이메일을 입력하세요")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.black.opacity(0.2))
            )
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.instagramBlack)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.horizontal, 15)
                .frame(height: 44)
                .background(.gray100)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .overlay {
                    RoundedRectangle(cornerRadius: 5).stroke(.gray200, lineWidth: 0.5)
                }
                .padding(.bottom, 12)
            
            SecureField(
                "비밀번호",
                text: $password,
                prompt: Text("비밀번호를 입력하세요")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.black.opacity(0.2))
            )
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.instagramBlack)
                .textContentType(.password)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.horizontal, 15)
                .frame(height: 44)
                .background(.gray100)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .overlay {
                    RoundedRectangle(cornerRadius: 5).stroke(.gray200, lineWidth: 0.5)
                }
                .padding(.bottom, 63)

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
            }
            
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview{
    InputView()
}
