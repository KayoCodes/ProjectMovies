//
//  PostersViewController.swift
//  Movies
//
//  Created by keenan ray on 3/12/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCollectionViewCell

           // Use the indexPath.item to index into the albums array to get the corresponding album
           let poster = posters[indexPath.item]

           // Get the artwork image url
        let imageUrl = poster.poster_path

           // Set the image on the image view of the cell
        Nuke.loadImage(with:URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + imageUrl.absoluteString)!, into: cell.posterImage)

           return cell
    }
    
    
    
    var posters: [Poster] = []
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionView.dataSource = self
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=22002e75a82ab5d626ee59637c287a68")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request){ [weak self] data, response, error in
            if let error = error{
                print("Network Error: \(error.localizedDescription)")
            }
            guard let data = data else {
                print("Data is NIL")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(PosterSearch.self, from: data)
                let posters = response.results
                self?.posters = posters
                DispatchQueue.main.async {
                    self?.posters = posters
                    self?.collectionView.reloadData()
                    
                }
                
                } catch {
                    print("❌ Error parsing JSON: \(error.localizedDescription)")
                }
               
            
        }
        task.resume()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 4

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)
        // Do any additional setup after loading the view.
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
