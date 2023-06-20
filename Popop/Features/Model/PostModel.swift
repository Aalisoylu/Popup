//
//  PostModel.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.
//
// MARK: - MyModelElement
struct PostModel: Codable {
    let userID, id: Int?
    let title, body: String?
}
