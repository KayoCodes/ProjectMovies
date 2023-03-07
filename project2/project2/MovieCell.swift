//
//  MovieCell.swift
//  project2
//
//  Created by keenan ray on 3/4/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    
    func configure(with movie: Movie) {
        
        movieTitle.text = movie.originalTitle
        movieDescription.text = movie.overview
        Nuke.loadImage(with: movie.poster!, into: movieImage)// Load image async via Nuke library image loading helper method
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
