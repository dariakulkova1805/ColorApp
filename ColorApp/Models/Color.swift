//
//  Color.swift
//  ColorApp
//
//  Created by DARYA on 9/27/23.
//

struct Color: Decodable {
    let id: Int
    let title: String
    let userName: String
    let numViews: Int
    let numVotes: Int
    let numComments: Int
    let numHearts: Int
    let rank: Int
    let dateCreated: String
    let hex: String
    let rgb: RGB
    let hsv: HSV
    let description: String
    let url: String
    let imageUrl: String
    let badgeUrl: String
    let apiUrl: String
}

struct RGB: Decodable {
    let red: Int
    let green: Int
    let blue: Int
}

struct HSV: Decodable {
    let hue: Int
    let saturation: Int
    let value: Int
}
