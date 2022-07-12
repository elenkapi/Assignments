//
//  DetailsViewController.swift
//  Elene_Kapanadze_15
//
//  Created by Ellen_Kapii on 12.07.22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var movieImdb: UILabel!
    @IBOutlet weak var mainActor: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func markAsFavorite(_ sender: UIButton) {
        let alertController = UIAlertController(title: "", message: "Successfully Added to Favorites⭐", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

