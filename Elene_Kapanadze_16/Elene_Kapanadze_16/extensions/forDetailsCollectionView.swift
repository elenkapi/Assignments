//
//  forDetailsCollectionView.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//

import UIKit

extension DetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        numOfItemsInSec
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoviesCollectionViewCell", for: indexPath) as! MoviesCollectionViewCell
        switch tappedMovie.genre {
        case .comedy:
            let comedyMovie = comedyMovies[indexPath.row]
            cell.movieImage.image = UIImage.init(named: comedyMovie.imageName)
        case .drama:
            let dramaMovie = dramaMovies[indexPath.row]
            cell.movieImage.image = UIImage.init(named: dramaMovie.imageName)
        case .action:
            let actionMovie = actionMovies[indexPath.row]
            cell.movieImage.image = UIImage.init(named: actionMovie.imageName)
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = comedyMovies[indexPath.row]
        self.movieTitle.text = movie.title
        self.movieReleaseDate.text = "Release Date: " + movie.releaseDate
        self.movieIMDb.text = "IMDb: \(movie.imdb)"
        self.movieMainActor.text = "Leading Actor: " + movie.mainActor
        self.genreLbl.text = "\(movie.genre)"
        imageAndDescription(movie: movie, viewController: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 120, height: 150)
    }
}
