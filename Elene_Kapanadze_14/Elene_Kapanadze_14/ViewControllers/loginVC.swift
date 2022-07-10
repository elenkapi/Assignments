//
//  loginVC.swift
//  Elene_Kapanadze_14
//
//  Created by Ellen_Kapii on 10.07.22.
//

import UIKit

class loginVC: UIViewController {
    // Text fields
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    // Data catchers
    var registeredUsername: String?
    var registeredEmail: String?
    var registeredPassword: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func showAlert() {
        let alertController = UIAlertController(title: "Oops!", message: "Incorrect Credentials", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(action)
        self.navigationController?.present(alertController, animated: true)
    }

    
    @IBAction func signIn(_ sender: UIButton) {
        if username.text == registeredUsername && password.text == registeredPassword {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC
            guard let vc = vc else { return }
            vc.passedUserName = registeredPassword
            vc.passedEmail = registeredEmail
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            showAlert()
        }
        
    }
    
    
    @IBAction func signUp(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RegistrationVC") as? RegistrationVC
        guard let vc = vc else { return }
        vc.enteredUsername = { value in
            self.registeredUsername = value
        }
        vc.enteredEmail = { value in
            self.registeredEmail = value
        }
        vc.enteredPassword = { value in
            self.registeredPassword = value
        }
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


