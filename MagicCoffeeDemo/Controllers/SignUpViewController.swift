//
//  SignUpViewController.swift
//  MagicCoffeeDemo
//
//  Created by Dana Sami Abu Eid on 21/04/2024.
//

import UIKit

class SignUpViewController:  UIViewController {
    
    let stackView = UIStackView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = makeButton(withText: "Login")
    let loginTitle = UILabel()
    let loginWelcome = UILabel()
    let forgetPswTitle = makeForgetPswButton(withText: "Forgot Password?")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

// MARK: - UI Setup

extension SignUpViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20


        styleTextField(emailTextField, withText: "  Email")
        styleTextField(passwordTextField, withText: "  Password")
        emailTextField.setIcon(.message)
        passwordTextField.setIcon(.lock)
        
        
        loginTitle.text = "Login"
        loginTitle.font = UIFont(name: "Poppins-Medium", size: 30)
        loginTitle.textColor = .drakNavy
        loginTitle.numberOfLines = 0
        loginTitle.textAlignment = .left
        
        
        loginWelcome.text = "Welcome Back!"
        loginWelcome.font = UIFont(name: "Poppins-Regular", size: 20)
        loginWelcome.textColor = .semiGray
        loginWelcome.numberOfLines = 0
        loginWelcome.textAlignment = .left
        
        
    }
    
    private func styleTextField(_ textField: UITextField, withText text: String) {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        textField.placeholder = text
        textField.layer.cornerRadius = 8
        textField.tintColor = .navyBlue
    }
    
    // MARK: - Layout Setup

    func layout() {
        stackView.addArrangedSubview(loginTitle)
        stackView.addArrangedSubview(loginWelcome)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(forgetPswTitle)
        stackView.addArrangedSubview(loginButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
            
            emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            
        //    loginTitle.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
       //     loginTitle.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
        //    loginWelcome.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
        //    loginWelcome.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            passwordTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            
            forgetPswTitle.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
            forgetPswTitle.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            loginButton.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
            loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
        ])
    }
}

// MARK: - Buttons Setup
 func makeSignupButton(withText text: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
    button.backgroundColor = .navyBlue
    button.layer.cornerRadius = 8
    button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
    return button
}



