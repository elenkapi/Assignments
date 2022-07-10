//
//  RegistrationVC.swift
//  Elene_Kapanadze_14
//
//  Created by Ellen_Kapii on 10.07.22.
//

import UIKit

class RegistrationVC: UIViewController {
    
    // Text fields
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    // Data passer closures
    var enteredUsername: ((String) -> ())?
    var enteredEmail: ((String) -> ())?
    var enteredPassword: ((String) -> ())?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    func areFilled() -> Bool {
        if username.hasText && email.hasText && password.hasText {
            return true
        }
        return false
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Oops!", message: "Please Fill in All Fields", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(action)
        self.navigationController?.present(alertController, animated: true)
    }
    
    
    @IBAction func signUp(_ sender: UIButton) {
        if areFilled() {
            enteredUsername?(username.text!)
            enteredEmail?(email.text!)
            enteredPassword?(password.text!)
            navigationController?.popViewController(animated: true)
        } else {
            showAlert()
        }
    }
    
    @IBAction func backToLogin(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}


