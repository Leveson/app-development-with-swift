//
//  ViewController.swift
//  Login
//
//  Created by Tshaka Lekholoane on 31/05/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return
        }
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Trouble Logging In?"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenPassword", sender: forgotPasswordButton)
    }
}

