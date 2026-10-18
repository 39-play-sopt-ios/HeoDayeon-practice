//
//  PostModel.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import Foundation

struct PostModel: Identifiable {
    let id = UUID()
    let username: String
    let location: String
    let postImageName: String
    let likesText: String
    let caption: String
    let timeText: String
    var isLiked = false
}
