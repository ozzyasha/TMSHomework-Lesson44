//
//  TeaCatalogueModel.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 23.05.24.
//

import Foundation

struct TeaCatalogueModel: Codable/*, Identifiable*/ {
//    let id = UUID()
    let name: String
    let price: String
    let img: String
    let description: String
    let quantity: String
    
    enum TeaCatalogue: String, CodingKey {
        case name = "name"
        case price
        case img = "img"
        case description
        case quantity
    }
}

struct TeaCatalogueResponse: Codable {
    let teaCatalogue: [TeaCatalogueModel]
}

