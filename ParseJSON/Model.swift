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
    let imageLesson: String
    let link: String
    
    enum CodingKeys: String, CodingKey{
        case id, name, date, link
        case imageLesson = "image"
    }
            
}
