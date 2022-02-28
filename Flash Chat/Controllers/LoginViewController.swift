//
//  LoginViewController.swift
//  Flash Chat
//
//  Created by Eetu Hernesniemi on 11.1.2022.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        let email = emailTextfield.text?.description ?? ""
        let password = passwordTextfield.text?.description ?? ""
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            } else {
                //Login succesful: Navigate to the ChatViewController
                self.performSegue(withIdentifier: K.loginSeque, sender: self)
            }
        }
    }
    
}
