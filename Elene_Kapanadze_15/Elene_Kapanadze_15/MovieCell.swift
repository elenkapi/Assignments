//
//  MovieCell.swift
//  Elene_Kapanadze_15
//
//  Created by Ellen_Kapii on 12.07.22.
//


import UIKit

protocol MovieCellDelegate {
    func markAs(cell: MovieCell)
}


class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var imdb: UILabel!
    
    var delegate: MovieCellDelegate?
    
    
    @IBAction func markAs(_ sender: Any) {
        delegate?.markAs(cell: self)
    }
    
}
