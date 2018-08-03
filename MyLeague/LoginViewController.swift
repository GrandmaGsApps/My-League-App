//
//  LoginViewController.swift
//  MyLeague
//
//  Created by Watson, Gabi on 8/2/18.
//  Copyright © 2018 Watson, Gabi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    public var newloginEngine = LoginEngine()
    @IBOutlet var loginView: UIView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func LoginButton(_ sender: Any) {
        if (newloginEngine.validUser(un: usernameTextField.text!, pw: passwordTextField.text!)){
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "MainMenuViewController") 
            self.present(newViewController, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginView.backgroundColor = Color.lightGray.value
        usernameTextField.layer.borderColor = Color.darkGray.value.cgColor
        passwordTextField.layer.borderColor = Color.darkGray.value.cgColor
        loginButton.backgroundColor = Color.darkGray.value
        loginButton.setTitleColor(Color.coreBlue.value, for: .normal)
        loginButton.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

