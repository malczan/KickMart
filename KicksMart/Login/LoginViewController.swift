//
//  ViewController.swift
//  KicksMart
//
//  Created by Jakub Malczyk on 22/10/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let welcomeLabel = UILabel()
    private let loginTextField = CustomTextField.create(withText: "Username", icon: "person", password: false, width: 300, height: 35)
    private let passwordTextField = CustomTextField.create(withText: "Password", icon: "lock", password: true, width: 300, height: 35)
    private let loginButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        installWelcomeLabel()
        installLoginTextField()
        installPasswordTextField()
        installLoginButton()
        view.backgroundColor = .backgroundColor
        
    }
    
    private func installWelcomeLabel() {
        view.addSubview(welcomeLabel)
        
        welcomeLabel.text = "Welcome to\n.KicksMart"
        welcomeLabel.font = UIFont(name: "WHOOPASS", size: 40)
        welcomeLabel.lineBreakMode = .byWordWrapping
        welcomeLabel.frame.size.width = 300
        welcomeLabel.sizeToFit()
        welcomeLabel.numberOfLines = 2
        welcomeLabel.textColor = .blue
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        let constraints =
        [
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func installLoginTextField() {
        view.addSubview(loginTextField)
    
        let constraints =
        [
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 250)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func installPasswordTextField() {
        view.addSubview(passwordTextField)
        
        let constraints =
        [
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.topAnchor, constant: 55)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func installLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.setTitle("LOGIN", for: .normal)
        loginButton.titleLabel?.textColor = .white
        loginButton.backgroundColor = .blue
        loginButton.layer.cornerRadius = 20
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        let constraints =
        [
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 70),
            loginButton.widthAnchor.constraint(equalToConstant: 150),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc private func loginButtonTapped() {
        print("Login")
    }


}

