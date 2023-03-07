//
//  MovieViewController.swift
//  project2
//
//  Created by keenan ray on 3/3/23.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
    
    var movies:[Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        movies = Movie.MockMovies
        print(movies)
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? MovieCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? detailViewController {
            
            // Use the index path to get the associated track
            let moves = movies[indexPath.row]
            
            // Set the track on the detail view controller
            detailViewController.movie = moves
        }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
