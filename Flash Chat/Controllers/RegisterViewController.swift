//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Eetu Hernesniemi on 11.1.2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        let email = emailTextfield.text?.description ?? ""
        let password = passwordTextfield.text?.description ?? ""
        if (!email.isEmpty && !password.isEmpty) {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error { //online authenthication error occured
                    print(e)
                } else {
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        } else {
            print("User input error!")
        }
        
    }
    
}

