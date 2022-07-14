//
//  DetailsViewController.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var movieImagesCollectionView: UICollectionView!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var movieIMDb: UILabel!
    @IBOutlet weak var movieMainActor: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    
    var movieCollection = Movie.movies
    var comedyMovies = [Movie]()
    var actionMovies = [Movie]()
    var dramaMovies = [Movie]()
    
    var tappedMovie: Movie!
    var numOfItemsInSec = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
        moviesCellConfiguration()
    }

    func moviesCellConfiguration() {
        movieImagesCollectionView.delegate = self
        movieImagesCollectionView.dataSource = self
        movieImagesCollectionView.registerNib(class: MoviesCollectionViewCell.self)
        let customFlowLayout = UICollectionViewFlowLayout()
        customFlowLayout.minimumLineSpacing = 15
        customFlowLayout.scrollDirection = .horizontal
        movieImagesCollectionView.backgroundColor = .clear
        movieImagesCollectionView.collectionViewLayout = customFlowLayout
    }
    
    
    
    @IBAction func addToFavorites(_ sender: UIButton) {
        let alertController = UIAlertController(title: "", message: "Successfully Added To Favorites⭐", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
       dismiss(animated: true)
    }

}

