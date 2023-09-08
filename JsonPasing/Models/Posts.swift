//
//  Posts.swift
//  JsonPasing
//
//  Created by Геник Мурадян on 08.09.2023.
//

import Foundation

let postsUrl = URL(string: "https://jsonplaceholder.org/posts")

struct Posts: Decodable {
    let id: Int
    let title: String
    let content: String
    let image: String // если ставить URL или URL? - выдаёт ошибку, подозреваю, что это связано с постом ID 32, там внутри ссылки пробел.
    let status: String
    let category: String
}

