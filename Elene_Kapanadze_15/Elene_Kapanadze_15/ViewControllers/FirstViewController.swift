//
//  FirstViewController.swift
//  Elene_Kapanadze_15
//
//  Created by Ellen_Kapii on 12.07.22.
//

import UIKit

 class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func diveIn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MoviesViewController") as? MoviesViewController
        guard let vc = vc else { return }
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
