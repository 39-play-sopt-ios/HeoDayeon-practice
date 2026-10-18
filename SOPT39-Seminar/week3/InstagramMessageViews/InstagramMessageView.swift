//
//  InstagramChatView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI

struct InstagramMessageView: View {
    @State private var viewModel = InstagramMessageViewModel()
    
    var body: some View {
        List(viewModel.exampleMsgs) { msg in
            InstagramMessageRowView(msg: msg)
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
