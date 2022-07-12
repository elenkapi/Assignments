//
//  Model.swift
//  Elene_Kapanadze_15
//
//  Created by Ellen_Kapii on 12.07.22.
//

import Foundation

struct Movie {
   let title: String
   let releaseDate: String
   let imdb: Double
   let mainActor: String
   let seen: Bool
   let isFavourite: Bool
   let description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
    
    static let harryPotterMovies: [Movie] = [
        Movie(title: "Harry Potter and the Philosopher's Stone", releaseDate: "2001", imdb: 7.6, mainActor: "Daniel Radcliffe", seen: true, isFavourite: false),
        Movie(title: "Harry Potter and the Chamber of Secrets", releaseDate: "2002", imdb: 7.4, mainActor: "Daniel Radcliffe", seen: true, isFavourite: false),
        Movie(title: "Harry Potter and the Prisoner of Azkaban", releaseDate: "2004", imdb: 7.9, mainActor: "Emma Watson", seen: false, isFavourite: false),
        Movie(title: "Harry Potter and the Goblet of Fire", releaseDate: "2005", imdb: 7.7, mainActor: "Emma Watson", seen: false, isFavourite: false),
        Movie(title: "Harry Potter and the Order of the Phoenix", releaseDate: "2007", imdb: 7.5, mainActor: "Daniel Radcliffe", seen: true, isFavourite: false),
        Movie(title: "Harry Potter and the Half-Blood Prince", releaseDate: "2009", imdb: 7.6, mainActor: "Rupert Grint", seen: false, isFavourite: false),
        Movie(title: "Harry Potter and the Deathly Hallows: Part 1", releaseDate: "2010", imdb: 7.7, mainActor: "Emma Watson", seen: false, isFavourite: false),
        Movie(title: "Harry Potter And The Deathly Hallows II", releaseDate: "2011", imdb: 8.1, mainActor: "Daniel Radcliffe", seen: true, isFavourite: false)
     ]
}

