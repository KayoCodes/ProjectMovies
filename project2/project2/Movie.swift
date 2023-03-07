//
//  Movie.swift
//  project2
//
//  Created by keenan ray on 3/3/23.
//

import Foundation
import UIKit

struct Movie{
   let originalTitle : String
    let overview: String
    let popularity: Double
    let poster : URL?
    let votes : Int
    let voteAvg : Double
    
}

extension Movie{
    static var MockMovies: [Movie] = [
        Movie(originalTitle: "Knock At The Cabin", overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", popularity: 3886.366, poster: URL(string: "https://m.media-amazon.com/images/M/MV5BZDA0MzcxZTgtMTAzZC00MGJkLTg3YzItZjMzNjkwOTVlODNlXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg")! , votes: 709, voteAvg: 6.5),
        Movie(originalTitle: "Black Panther: Wakanda Forever", overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", popularity: 2680.34, poster:URL(string: "https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg")!, votes: 3734, voteAvg: 7.4),
        Movie(originalTitle: "Puss in Boots: The Last Wish", overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.", popularity: 2398.547, poster:URL(string: "https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_.jpg")!, votes: 4202, voteAvg: 8.4),
        Movie(originalTitle: "Plane", overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.", popularity: 1984.217, poster: URL(string: "https://m.media-amazon.com/images/M/MV5BZDc4MzVkNzYtZTRiZC00ODYwLWJjZmMtMDIyNjQ1M2M1OGM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg")!, votes: 731, voteAvg: 6.9),
        Movie(originalTitle: "Little Dixie", overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", popularity: 1546.875, poster: URL(string: "https://m.media-amazon.com/images/M/MV5BYjFmMjFmYTYtNDg4MS00NDU1LWJmMzktNzYyN2Y3M2EzZWFlXkEyXkFqcGdeQXVyMjEzMjMzNDc@._V1_.jpg")!, votes: 41, voteAvg: 6.4),
        Movie(originalTitle: "Huesera", overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.", popularity: 1341.204, poster: URL(string: "https://m.media-amazon.com/images/M/MV5BMTkxOWYxODItZmJhYi00NjllLWIzMWItMWZiYTQ3Mzc2MjY5XkEyXkFqcGdeQXVyMTM2MzgyOTU@._V1_.jpg")!, votes: 47, voteAvg: 6.3)
    
    
    
    
    ]
    
    
    
    
}
