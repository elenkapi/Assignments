//
//  Model.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//

import Foundation
import UIKit

enum Genre: String, CaseIterable {
    case comedy, action, drama
}

struct Movie {
    let title: String
    let releaseDate: String
    let imdb: Double
    let mainActor: String
    let seen: Bool
    let isFavourite: Bool
    let genre: Genre
    let imageName: String
    let description = ""
    
    static let movies: [Movie] = [
        Movie(title: "Legends Of The Fall", releaseDate: "1994", imdb: 7.5, mainActor: "Brad Pitt", seen: false, isFavourite: true, genre: .drama, imageName: "0"),
        Movie(title: "Meet Joe Black", releaseDate: "1998", imdb: 7.2, mainActor: "Antony Hopkins", seen: true, isFavourite: true, genre: .drama, imageName: "1"),
        Movie(title: "White Oleander", releaseDate: "2002", imdb: 7.1, mainActor: "Michelle Pfeiffer", seen: true, isFavourite: true, genre: .drama, imageName: "2"),
        Movie(title: "I Am Sam", releaseDate: "2001", imdb: 7.6, mainActor: "Sean Penn", seen: true, isFavourite: true, genre: .drama, imageName: "3"),
        Movie(title: "Kramer vs. Kramer", releaseDate: "1979", imdb: 7.8, mainActor: "Dustin Hoffman", seen: false, isFavourite: true, genre: .drama, imageName: "4"),
        Movie(title: "Shutter Island", releaseDate: "2010", imdb: 8.2, mainActor: "Leonardo DiCaprio", seen: false, isFavourite: false, genre: .action, imageName: "5"),
        Movie(title: "Inception", releaseDate: "2010", imdb: 8.8, mainActor: "Leonardo DiCaprio", seen: true, isFavourite: true, genre: .action, imageName: "6"),
        Movie(title: "Blade Runner", releaseDate: "1982", imdb: 8.1, mainActor: "Harrison Ford", seen: true, isFavourite: true, genre: .action, imageName: "7"),
        Movie(title: "Blade Runner 2049", releaseDate: "2017", imdb: 8.0, mainActor: "Ryan Gosling", seen: true, isFavourite: true, genre: .action, imageName: "8"),
        Movie(title: "Interstellar", releaseDate: "2014", imdb: 8.6, mainActor: "Matthew McCoaughe", seen: true, isFavourite: false, genre: .drama, imageName: "9"),
        Movie(title: "The Devil Wears Prada", releaseDate: "2006", imdb: 6.9, mainActor: "Meryl Streep", seen: false, isFavourite: true, genre: .action, imageName: "10"),
        Movie(title: "The Hangover", releaseDate: "2009", imdb: 7.7, mainActor: "Bradley Cooper", seen: true, isFavourite: true, genre: .comedy, imageName: "11"),
        Movie(title: "Django Unchained", releaseDate: "2012", imdb: 8.4, mainActor: "Jamie Foxx", seen: false, isFavourite: false, genre: .action, imageName: "12"),
        Movie(title: "The Tall Blond Man with One Black Shoe", releaseDate: "1972", imdb: 7.2, mainActor: "Pierre Richard", seen: true, isFavourite: true, genre: .comedy, imageName: "13"),
        Movie(title: "The Fugitives", releaseDate: "1986", imdb: 7.0, mainActor: "Gérard Depardieu", seen: false, isFavourite: true, genre: .comedy, imageName: "14"),
        Movie(title: "Amélie(The Beauty of Amelie)", releaseDate: "2001", imdb: 8.3, mainActor: "Audrey Tautou", seen: true, isFavourite: true, genre: .comedy, imageName: "15"),
        Movie(title: "Priceless", releaseDate: "2006", imdb: 7.0, mainActor: "Gad Elmaleh", seen: true, isFavourite: true, genre: .comedy, imageName: "16")
    ]
}


// Sets the image and the description to the vc according to movie title
func imageAndDescription(movie: Movie, viewController: DetailsViewController) {
    switch movie.title {
    case "Legends Of The Fall":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Colonel Ludlow decides to move to Montana's country-side and raise his three children. His life changes when he learns that all his children have fallen in love with the same girl."
    case "Meet Joe Black":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Death arrives on Earth in human form, going by the name Joe Black, to escort the soul of media tycoon William Parrish. However, Death's journey ends with him falling in love with William's daughter."
    case  "White Oleander":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Astrid, a young girl who is highly dependent on her single mother Ingrid, goes through the foster home system when Ingrid gets arrested for poisoning her boyfriend."
    case  "I Am Sam":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Sam, a man with special needs, fights for the custody of his daughter when her mother abandons them. He tries to prove that he is a capable father with the help of an infamous lawyer."
    case "Kramer vs. Kramer":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Disinterested workaholic Ted develops a special bond with his son, Billy, after his wife Joanna walks out on them. However, Joanna soon returns, demanding full custody of their son."
    case "Shutter Island":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place."
    case   "Inception":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Cobb steals information from his targets by entering their dreams. Saito offers to wipe clean Cobb's criminal history as payment for performing an inception on his sick competitor's son."
    case  "Blade Runner":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Rick Deckard, an ex-policeman, becomes a special agent with a mission to exterminate a group of violent androids. As he starts getting deeper into his mission, he questions his own identity."
    case   "Blade Runner 2049":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "K, an officer with the Los Angeles Police Department, unearths a secret that could create chaos. He goes in search of a former blade runner who has been missing for over three decades."
    case  "Interstellar":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans."
    case  "The Devil Wears Prada":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Andy, a young graduate aspiring to be a journalist, comes to New York and becomes an assistant to one of the city's biggest magazine editors, the ruthless and cynical Miranda Priestly."
    case   "The Hangover":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Doug and his three best men go to Las Vegas to celebrate his bachelor party. However, the three best men wake up the next day with a hangover and realise that Doug is missing."
    case   "Django Unchained":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "When Django, a slave, is freed, he joins forces with a bounty hunter to rescue his wife, who has been enslaved by Calvin, a hard-hearted plantation owner."
    case  "The Tall Blond Man with One Black Shoe":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "A hapless orchestra player becomes an unwitting pawn of rival factions within the French secret service after he is chosen as a decoy by being identified as a super secret agent."
    case    "The Fugitives":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Jean is taken hostage at a bank by a foolish bank robber. As Jean left prison an hour earlier, the police assume he's the robber. Everything goes comically wrong. The robber's little daughter joins the fugitives."
    case   "Amélie(The Beauty of Amelie)":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Amélie is a story about a girl named Amélie whose childhood was suppressed by her Father's mistaken concerns of a heart defect. With these concerns Amélie gets hardly any real-life contact with other people. This leads Amélie to resort to her own fantastical world and dreams of love and beauty."
    case  "Priceless":
        viewController.movieImage.image = UIImage.init(named: movie.imageName)
        viewController.movieDescription.text = "Through a set of wacky circumstances, a young gold digger mistakenly woos a mild-mannered bartender, thinking he's a wealthy suitor. Through a set of wacky circumstances, a young gold digger mistakenly woos a mild-mannered bartender, thinking he's a wealthy suitor."
    default: viewController.movieDescription.text = "ERROR"
    }
}
