//
//  ViewController.swift
//  Elene_Kapanadze_19
//
//  Created by Ellen_Kapii on 21.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var backgroundImage: UIImageView = {
        var backgroundImage = UIImageView()
        view.addSubview(backgroundImage)
        return backgroundImage
    }()
    
    lazy var appTitle: UILabel = {
        var appTitle = UILabel()
        view.addSubview(appTitle)
        return appTitle
    }()
    
    lazy var viewForLogo: UIView = {
        var viewForLogo = UIView()
        view.addSubview(viewForLogo)
        return viewForLogo
    }()
    
    lazy var imageLogo: UIImageView = {
        var imageLogo = UIImageView()
        viewForLogo.addSubview(imageLogo)
        return imageLogo
    }()
    
    lazy var emailTextField: UITextField = {
        var emailTextField = UITextField()
        view.addSubview(emailTextField)
        return emailTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        var passwordTextField = UITextField()
        view.addSubview(passwordTextField)
        return passwordTextField
    }()
    
    lazy var signInButton: UIButton = {
        var signInButton = UIButton()
        view.addSubview(signInButton)
        return signInButton
    }()
    
    lazy var signUpLable: UILabel = {
        var signUpLable = UILabel()
        view.addSubview(signUpLable)
        return signUpLable
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBackgroundImage()
        addAppTitle()
        addViewForLogo()
        addImageLogo()
        addEmailTextField()
        addPasswordTextField()
        addSignInButton()
        addSignUpLable()
    }
    
    
    func addBackgroundImage() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = UIImage.init(named: "hilda")
        
        let topConstraint = NSLayoutConstraint(item: backgroundImage,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: view,
                                               attribute: .top,
                                               multiplier: 1,
                                               constant: 0)
        
        let leftConstraint = NSLayoutConstraint(item: backgroundImage,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 0)
        
        let rightConstraint = NSLayoutConstraint(item: backgroundImage,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: 0)
        
        let bottomConstraint = NSLayoutConstraint(item: backgroundImage,
                                                  attribute: .bottom,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .bottom,
                                                  multiplier: 1,
                                                  constant: 0)
        
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, bottomConstraint, leftConstraint])
    }
    
    func addAppTitle() {
        appTitle.translatesAutoresizingMaskIntoConstraints = false
        appTitle.text = "iOS APP Templates"
        appTitle.textAlignment = .center
        appTitle.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        appTitle.textColor = .white
        
        
        let topConstraint = NSLayoutConstraint(item: appTitle,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: view.safeAreaLayoutGuide,
                                               attribute: .top,
                                               multiplier: 1,
                                               constant: 50)
        
        let leftConstraint = NSLayoutConstraint(item: appTitle,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 20)
        
        
        let rightConstraint = NSLayoutConstraint(item: appTitle,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: -20)
        
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint])
    }
    
    func addViewForLogo() {
        viewForLogo.translatesAutoresizingMaskIntoConstraints = false
        viewForLogo.layer.cornerRadius = view.frame.width / 4
        viewForLogo.layer.masksToBounds = true
        viewForLogo.backgroundColor = .white
        
        let topConstraint = NSLayoutConstraint(item: viewForLogo,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: appTitle,
                                               attribute: .bottom,
                                               multiplier: 1,
                                               constant: 40)
        
        let leftConstraint = NSLayoutConstraint(item: viewForLogo,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 90)
        
        let rightConstraint = NSLayoutConstraint(item: viewForLogo,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: -90)
        let height = NSLayoutConstraint(item: viewForLogo,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 200)
        
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint, height])
    }
    
    func addImageLogo() {
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        imageLogo.image = UIImage.init(named: "hildaAsLogo")
        imageLogo.contentMode = .scaleAspectFit
        
        let topConstraint = NSLayoutConstraint(item: imageLogo,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: view,
                                               attribute: .top,
                                               multiplier: 1,
                                               constant: 0)
        
        let leftConstraint = NSLayoutConstraint(item: imageLogo,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 0)
        
        let rightConstraint = NSLayoutConstraint(item: imageLogo,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: 0)
        
        let bottomConstraint = NSLayoutConstraint(item: imageLogo,
                                                  attribute: .bottom,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .bottom,
                                                  multiplier: 1,
                                                  constant: 0)
        
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, bottomConstraint, leftConstraint])
    }
    
    func addEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Email"
        emailTextField.backgroundColor = .white
        emailTextField.layer.cornerRadius = 15
        
        let topConstraint = NSLayoutConstraint(item: emailTextField,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: viewForLogo,
                                               attribute: .bottom,
                                               multiplier: 1,
                                               constant: 50)
        
        let leftConstraint = NSLayoutConstraint(item: emailTextField,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 10)
        
        let rightConstraint = NSLayoutConstraint(item: emailTextField,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: -10)
        
        let height = NSLayoutConstraint(item: emailTextField,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 50)
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint, height])
    }
    
    func addPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 15
        
        let topConstraint = NSLayoutConstraint(item: passwordTextField,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: emailTextField,
                                               attribute: .bottom,
                                               multiplier: 1,
                                               constant: 30)
        
        let leftConstraint = NSLayoutConstraint(item: passwordTextField,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 10)
        
        let rightConstraint = NSLayoutConstraint(item: passwordTextField,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: -10)
        
        let height = NSLayoutConstraint(item: passwordTextField,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                        constant: 50)
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint, height])
        
    }
    
    func addSignInButton() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = .purple
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.layer.cornerRadius = 15
        
        let topConstraint = NSLayoutConstraint(item: signInButton,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: passwordTextField,
                                               attribute: .bottom,
                                               multiplier: 1,
                                               constant: 50)
        
        let leftConstraint = NSLayoutConstraint(item: signInButton,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 100)
        
        let rightConstraint = NSLayoutConstraint(item: signInButton,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: -100)
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint])
    }
    
    func addSignUpLable() {
        signUpLable.translatesAutoresizingMaskIntoConstraints = false
        signUpLable.text = "Don't have an account? Sign Up"
        signUpLable.textColor = .black
        signUpLable.textAlignment = .center
        
        let topConstraint = NSLayoutConstraint(item: signUpLable,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: signInButton,
                                               attribute: .bottom,
                                               multiplier: 1,
                                               constant: 50)
        
        let leftConstraint = NSLayoutConstraint(item: signUpLable,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                                constant: 20)
        
        let rightConstraint = NSLayoutConstraint(item: signUpLable,
                                                 attribute: .right,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .right,
                                                 multiplier: 1,
                                                 constant: -20)
        
        NSLayoutConstraint.activate([topConstraint, rightConstraint, leftConstraint])
    }
}












