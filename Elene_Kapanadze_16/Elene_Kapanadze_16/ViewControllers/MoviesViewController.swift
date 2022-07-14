//
//  MoviesViewController.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//


import UIKit

class MoviesViewController: UIViewController, MovieCellDelegate {
    
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieTableView: UITableView!
    
    
    let movieCollection = Movie.movies
    var watchedMovies = [Movie]()
    var moviesToWatch = [Movie]()
    
    var comedyMovies = [Movie]()
    var actionMovies = [Movie]()
    var dramaMovies = [Movie]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieTableView.delegate = self
        movieTableView.dataSource = self
        moviesIntoSections()
        comedyMovies = movieCollection.filter ({ $0.genre == .comedy })
        actionMovies = movieCollection.filter ({ $0.genre == .action })
        dramaMovies = movieCollection.filter ({ $0.genre == .drama })
        self.navigationController?.navigationBar.tintColor = .black
        genreCellConfiguration()
    }
    
    
    // Initial Devision of movies into sections
    func moviesIntoSections() {
        movieCollection.forEach { movie in
            if movie.seen == true {
                watchedMovies.append(movie)
            } else {
                moviesToWatch.append(movie)
            }
        }
    }
    
    
    
    func genreCellConfiguration() {
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        movieCollectionView.registerNib(class: GenreCollectionViewCell.self)
        let customFlowLayout = UICollectionViewFlowLayout()
        customFlowLayout.minimumLineSpacing = 20
        customFlowLayout.scrollDirection = .horizontal
        movieCollectionView.collectionViewLayout = customFlowLayout
    }
    
    // Table view cell button
    func moveToSection(cell: MovieCell) {
        if let indexPath = movieTableView.indexPath(for: cell) {
            if indexPath.section == 0 {
                let movie = watchedMovies[indexPath.row]
                moviesToWatch.append(movie)
                watchedMovies.remove(at: indexPath.row)
                movieTableView.reloadData()
            } else {
                let movie = moviesToWatch[indexPath.row]
                watchedMovies.append(movie)
                moviesToWatch.remove(at: indexPath.row)
                movieTableView.reloadData()
            }
        }
    }
}


