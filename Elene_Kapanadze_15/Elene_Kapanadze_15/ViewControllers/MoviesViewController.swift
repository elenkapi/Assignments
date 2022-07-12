//
//  MoviesViewController.swift
//  Elene_Kapanadze_15
//
//  Created by Ellen_Kapii on 12.07.22.
//


import UIKit

class MoviesViewController: UIViewController, MovieCellDelegate {
    func markAs(cell: MovieCell) {
        
        if let indexPath = tableView.indexPath(for: cell) {
            if indexPath.section == 0 {
                let movie = watchedMovies[indexPath.row]
                moviesToWatch.append(movie)
                watchedMovies.remove(at: indexPath.row)
                tableView.reloadData()
            } else {
                let movie = moviesToWatch[indexPath.row]
                watchedMovies.append(movie)
                moviesToWatch.remove(at: indexPath.row)
                tableView.reloadData()
            }
        }
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let movieCollection = Movie.harryPotterMovies
    var watchedMovies = [Movie]()
    var moviesToWatch = [Movie]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        movieCollection.forEach { movie in
            if movie.seen == true {
                watchedMovies.append(movie)
            } else {
                moviesToWatch.append(movie)
            }
            tableView.reloadData()
        }
    }
    
    
}

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
            cell.movieTitle.text = currentMovie.title
            cell.imdb.text = "\(currentMovie.imdb)"
            cell.delegate = self
            return cell
        } else {
            let currentMovie = moviesToWatch[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
            cell.movieTitle.text = currentMovie.title
            cell.imdb.text = "\(currentMovie.imdb)"
            cell.delegate = self
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
        guard let vc = vc else { return }
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.present(vc, animated: true)
        func switchCatcher(movieSection: [Movie]) {
            switch movieSection[indexPath.row].title {
            case "Harry Potter and the Philosopher's Stone":
                vc.movieImage.image = UIImage.init(named: "1")
                vc.movieDescription.text = "Harry Potter, an eleven-year-old orphan, discovers that he is a wizard and is invited to study at Hogwarts. Even as he escapes a dreary life and enters a world of magic, he finds trouble awaiting him."
            case "Harry Potter and the Chamber of Secrets":
                vc.movieImage.image = UIImage.init(named: "2")
                vc.movieDescription.text = "A house-elf warns Harry against returning to Hogwarts, but he decides to ignore it. When students and creatures at the school begin to get petrified, Harry finds himself surrounded in mystery."
                
            case "Harry Potter and the Prisoner of Azkaban":
                vc.movieImage.image = UIImage.init(named: "3")
                vc.movieDescription.text = "Harry, Ron and Hermoine return to Hogwarts just as they learn about Sirius Black and his plans to kill Harry. However, when Harry runs into him, he learns that the truth is far from reality."
            case "Harry Potter and the Goblet of Fire":
                vc.movieImage.image = UIImage.init(named: "4")
                vc.movieDescription.text = "When Harry gets chosen as the fourth participant in the inter-school Triwizard Tournament, he is unwittingly pulled into a dark conspiracy that slowly unveils its dangerous agenda."
            case "Harry Potter and the Order of the Phoenix":
                vc.movieImage.image = UIImage.init(named: "5")
                vc.movieDescription.text = "Harry Potter and Dumbledore's warning about the return of Lord Voldemort is not heeded by the wizard authorities who, in turn, look to undermine Dumbledore's authority at Hogwarts and discredit Harry."
            case "Harry Potter and the Half-Blood Prince":
                vc.movieImage.image = UIImage.init(named: "6")
                vc.movieDescription.text = "Dumbledore and Harry Potter learn more about Voldemort's past and his rise to power. Meanwhile, Harry stumbles upon an old potions textbook belonging to a person calling himself the Half-Blood Prince."
            case "Harry Potter and the Deathly Hallows: Part 1":
                vc.movieImage.image = UIImage.init(named: "7")
                vc.movieDescription.text = "After Voldemort takes over the Ministry of Magic, Harry, Ron and Hermione are forced into hiding. They try to decipher the clues left to them by Dumbledore to find and destroy Voldemort's Horcruxes."
            case "Harry Potter And The Deathly Hallows II":
                vc.movieImage.image = UIImage.init(named: "8")
                vc.movieDescription.text = "Harry, Ron and Hermione race against time to destroy the remaining Horcruxes. Meanwhile, the students and teachers unite to defend Hogwarts against Lord Voldemort and the Death Eaters."
            default: vc.movieDescription.text = "Impossible"
            }
            
        }
        if indexPath.section == 0 {
            vc.movie = watchedMovies[indexPath.row]
            switchCatcher(movieSection: watchedMovies)
            vc.movieTitle.text = watchedMovies[indexPath.row].title
            vc.releaseDate.text = "Release Date: " + watchedMovies[indexPath.row].releaseDate
            vc.mainActor.text = "Leading Actor: " + watchedMovies[indexPath.row].mainActor
            vc.movieImdb.text = "IMDB: \(watchedMovies[indexPath.row].imdb)"
        } else {
            vc.movie = moviesToWatch[indexPath.row]
            switchCatcher(movieSection: moviesToWatch)
            vc.movieTitle.text = moviesToWatch[indexPath.row].title
            vc.releaseDate.text = "Release Date: " + moviesToWatch[indexPath.row].releaseDate
            vc.mainActor.text = "Leading Actor: " + moviesToWatch[indexPath.row].mainActor
            vc.movieImdb.text = "IMDB: \(moviesToWatch[indexPath.row].imdb)"
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
            header.textLabel?.textColor = .white
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
}
