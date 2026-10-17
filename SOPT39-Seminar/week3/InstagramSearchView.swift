//
//  InstagramSearchView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI

struct InstagramSearchView: View {
    @State private var searchText = ""
    
    private let columnCount = 3
    private let rowCount = 6
    
    var body: some View {
        VStack(spacing: 23) {
            searchFieldView
            
            ScrollView {
                Grid(horizontalSpacing: 1, verticalSpacing: 1) {
                    ForEach(0..<6, id: \.self) { row in
                        GridRow {
                            ForEach(0..<3, id: \.self) { column in
                                let index = row * 3 + column
                                
                                Color.clear
                                    .aspectRatio(1, contentMode: .fit)
                                    .overlay {
                                        Image("Rectangle\(index)")
                                            .resizable()
                                            .scaledToFill()
                                    }
                                    .clipped()
                            }
                        }
                    }
                }
            }
            
        }
    }
    
    private var searchFieldView: some View {
        HStack(spacing: 13) {
            TextField("검색", text: $searchText, prompt: Text("검색"))
                .font(.system(size: 13, weight: .regular))
                .padding(.horizontal, 15)
                .padding(.vertical, 7)
                .foregroundStyle(.black, .opacity(0.6))
                .background(.gray100)
                .frame(height: 36)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray200))
            
            Image(.icSave)
                .resizable()
                .frame(width: 20, height: 23)
        }
        .padding(.horizontal, 12)
    }
}

#Preview {
    InstagramSearchView()
}
