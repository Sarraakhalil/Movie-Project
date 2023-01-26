//
//  MovieDataModel.swift
//  Movie-Project
//
//  Created by سرّاء. on 04/07/1444 AH.
//

import Foundation

struct MoviePoster {
    let id = UUID()
    let image: String
    let name: String
    let des: String
    let rate: String
    
    
    static var mCards = [
        MoviePoster(image: "Bambi", name: "Bambi", des: "Disney", rate: "7.8"),
        MoviePoster(image: "Repunzel3", name: "Repunzel", des: "Disney", rate: "9.4"),
        MoviePoster(image: "Tarazan", name: "Tarazan", des: "Disney", rate: "8.2"),
        MoviePoster(image: "Temon3", name: "Temon", des: "Disney", rate: "8.5"),
        MoviePoster(image: "Frozen", name: "Frozen", des: "Disney", rate: "9.7"),
    ]
    
}
