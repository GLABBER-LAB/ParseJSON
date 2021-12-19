//
//  Model.swift
//  ParseJSON
//
//  Created by GLABBER on 19.12.2021.
//

import Foundation

struct Lesson: Decodable {
    let id: Int
    let name: String
    let date: Date
    let imageLesson: String?
    let link: String
    let comments: [Comment]?
    
    enum CodingKeys: String, CodingKey{
        case id, name, date, link, comments
        case imageLesson = "image"
    }
            
}

struct Comment: Decodable {
    let id: Int
    let text: String
    let date: Date
    let user: User
    
}

struct User: Decodable {
    let id: Int
    let name: String
    let gender: Gender
}

enum Gender: String,Decodable {
    case male
    case female
}
