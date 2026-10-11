//
//  SheetPracticeView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/10/26.
//

import SwiftUI

struct SheetPracticeView: View {
    @State private var showSheet = false

    var body: some View {
        Button("시트 열기") {
            showSheet = true
        }
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 20) {
                Text("아래에서 올라온 화면이에요!")
                    .font(.title2)

                Button("닫기") {
                    showSheet = false
                }
            }
            .padding()
//            .presentationDetents([.medium, .large])
            // 바텀시트 높이 지정
            // 두가지 작성해야 반영이 됨
//            .presentationDetents([.fraction(0.8)])
            // 값 하나만 넣으면 더 크게/작게 조절 안된다
            .presentationDetents([.fraction(0.3), .fraction(0.7)])
        }
    }
}

#Preview {
    SheetPracticeView()
}
