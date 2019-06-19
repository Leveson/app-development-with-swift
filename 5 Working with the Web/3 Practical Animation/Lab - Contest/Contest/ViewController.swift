//
//  ViewController.swift
//  Contest
//
//  Created by Tshaka Lekholoane on 19/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        if emailTextField.text == "" {
            UIView.animate(withDuration: 0.2, animations: {
                let rightTransform = CGAffineTransform(translationX: 20, y: 0)
                self.emailTextField.transform = rightTransform
            }) { (_) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.emailTextField.transform = CGAffineTransform.identity
                    })
            }
        } else {
            performSegue(withIdentifier: "toEntered", sender: nil)
        }
    }
    
}

