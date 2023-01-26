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
    let date : String
    let time : String
    
    
    static var mCards = [
        MoviePoster(image: "Bambi", name: "Bambi", des: "Disney", rate: "7.8" , date: "23/2" , time: "2:00"),
        MoviePoster(image: "Repunzel3", name: "Repunzel", des: "Disney", rate: "9.4" ,  date: "23/2" , time: "2:00"),
        MoviePoster(image: "Tarazan", name: "Tarazan", des: "Disney", rate: "8.2" , date: "23/2" , time: "2:00"),
        MoviePoster(image: "Temon3", name: "Temon", des: "Disney", rate: "8.5" , date: "23/2" , time: "2:00"),
        MoviePoster(image: "Frozen", name: "Frozen", des: "Disney", rate: "9.7" , date: "23/2" , time: "2:00") ,
    ]
    
}
