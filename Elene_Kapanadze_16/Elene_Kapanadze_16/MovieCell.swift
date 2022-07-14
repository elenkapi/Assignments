//
//  MovieCell.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//

import UIKit

protocol MovieCellDelegate {
    func moveToSection(cell: MovieCell)
}

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImdb: UILabel!
    
    var delegate: MovieCellDelegate?
    
    
    @IBAction func moveToSections(_ sender: Any) {
        delegate?.moveToSection(cell: self)
    }
}

