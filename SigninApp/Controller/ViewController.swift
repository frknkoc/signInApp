//
//  ViewController.swift
//  SigninApp
//
//  Created by furkan on 15.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var rePassword: UITextField!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingIndicator.isHidden = true
        alertLabel.isHidden = true
    }

    @IBAction func signinButton(_ sender: Any) {
        
        if usernameTextField.text != ""{
            if password.text != ""{
                if password.text! == rePassword.text! {
                    performSegue(withIdentifier: "toSecondVC", sender: nil)
                    loadingIndicator.isHidden = false
                    alertLabel.isHidden = true
                }
                else{
                    alertLabel.isHidden = false
                    alertLabel.text = "Passwordler uyuşmuyor"
                }
            } else{
                alertLabel.isHidden = false
                alertLabel.text = "Password boş bırakılamaz"
            }
            
        }
        else{
            alertLabel.isHidden = false
            alertLabel.text = "Username boş bırakılamaz"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.Username = usernameTextField.text!
            destinationVC.Password = password.text!
        }
    }
    
}

