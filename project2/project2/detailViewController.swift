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

        Nuke.loadImage(with: movie.poster!, into: detailImage)
        movieTitle.text = movie.originalTitle
        voteAverage.text = "\(movie.voteAvg) Vote Average"
        popularity.text = "Populaity: \(movie.popularity)"
        detailvotes.text = "Votes: \(movie.votes)"
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
