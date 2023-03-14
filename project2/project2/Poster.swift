//
//  Poster.swift
//  Movies
//
//  Created by keenan ray on 3/12/23.
//

import Foundation
struct Poster: Decodable{
    let poster_path : URL
}
struct PosterSearch: Decodable {
    let results:[Poster]
}
