//
//  ForTableView.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//

import UIKit

extension MoviesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return watchedMovies.count
        }
        return moviesToWatch.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let currentMovie = watchedMovies[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
            //cell.selectedBackgroundView?.backgroundColor = .tintColor
            cell.movieTitle.text = currentMovie.title
            cell.movieImdb.text = "IMDb: \(currentMovie.imdb)"
            cell.delegate = self
            return cell
        } else {
            let currentMovie = moviesToWatch[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
            cell.movieTitle.text = currentMovie.title
            cell.movieImdb.text = "IMDb: \(currentMovie.imdb)"
            cell.delegate = self
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Watched Movies"
        }
        return "Movies to Watch"
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel?.textColor = .black
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
        guard let vc = vc else { return }
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.present(vc, animated: true)
        vc.comedyMovies = comedyMovies
        vc.actionMovies = actionMovies
        vc.dramaMovies = dramaMovies
        
        // for movies view collection
        func labelValues(movie: Movie) {
            vc.movieTitle.text = movie.title
            vc.movieReleaseDate.text = "Release Date: " + movie.releaseDate
            vc.movieIMDb.text = "IMDb: \(movie.imdb)"
            vc.movieMainActor.text = "Leading Actor: " + movie.mainActor
            vc.genreLbl.text = "\(movie.genre)"
            vc.tappedMovie = movie
        }
        
        // for details page
        func switchForGenres(movie: Movie) {
            switch movie.genre {
            case .comedy :
                vc.numOfItemsInSec = comedyMovies.count
            case .drama:
                vc.numOfItemsInSec = dramaMovies.count
            case .action:
                vc.numOfItemsInSec = actionMovies.count
            }
        }
    
        if indexPath.section == 0 {
            let movie = watchedMovies[indexPath.row]
            labelValues(movie: movie)
            imageAndDescription(movie: movie, viewController: vc)
            switchForGenres(movie: movie)
        } else {
            let movie = moviesToWatch[indexPath.row]
            labelValues(movie: movie)
            imageAndDescription(movie: movie, viewController: vc)
            switchForGenres(movie: movie)
        }
    }
}
