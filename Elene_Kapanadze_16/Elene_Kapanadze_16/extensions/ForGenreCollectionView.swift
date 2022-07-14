//
//  ForCollectionView.swift
//  Elene_Kapanadze_16
//
//  Created by Ellen_Kapii on 14.07.22.
//

import UIKit

extension UICollectionViewCell {
    
    static var identifier: String { String(describing: self) }
    static var nibFile: UINib {
        UINib(nibName: identifier, bundle: nil)
    }
}

extension UICollectionView {
    
    func registerNib<T: UICollectionViewCell>(class: T.Type) {
        self.register(T.nibFile, forCellWithReuseIdentifier: T.identifier)
    }
}




extension MoviesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Genre.allCases.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        if indexPath.row > 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            cell.genreLbl.text = "all"
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            let genre = Genre.allCases[indexPath.row]
            cell.genreLbl.text = genre.rawValue
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 150, height: 80)
    }
    
}


