//
//  detailViewController.swift
//  project2
//
//  Created by keenan ray on 3/4/23.
//

import UIKit
import Nuke

class detailViewController: UIViewController {
    var movie:Movie!
    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with:URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path!.absoluteString)!, into: detailImage)
        movieTitle.text = movie.original_title
        voteAverage.text = "\(movie.vote_average) Vote Average"
       popularity.text = "Populaity: \(movie.popularity)"
        detailvotes.text = "Votes: \(movie.vote_count)"
        movieDescription.text = movie.overview
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var voteAverage: UILabel!
    
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var detailvotes: UILabel!
    
    @IBOutlet weak var movieDescription: UITextView!
    
   
        // Pass the selected object to the

}
