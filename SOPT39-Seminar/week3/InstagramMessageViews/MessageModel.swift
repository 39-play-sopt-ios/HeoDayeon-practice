//
//  ChatModel.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import Foundation

struct MessageModel: Identifiable {
    let id = UUID()
    let profileImageName: String
    let nickName: String
    let textContent: String
    let timeText: String
}
