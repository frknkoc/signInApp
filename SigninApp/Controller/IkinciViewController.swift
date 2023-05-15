//
//  IkinciViewController.swift
//  SigninApp
//
//  Created by furkan on 15.05.2023.
//

import UIKit

class IkinciViewController: UIViewController {
    
    @IBOutlet weak var enteredUsername: UITextField!

    @IBOutlet weak var enteredPassword: UITextField!
    
    @IBOutlet weak var enteredRepassword: UITextField!
    
    @IBOutlet weak var greenAlertLabel: UILabel!
    
    @IBOutlet weak var LoadingIndicator: UIActivityIndicatorView!
    
    var Username = ""
    
    var Password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enteredUsername.text = Username
        
        enteredPassword.text = Password
        
        enteredRepassword.text = Password
        
        LoadingIndicator.isHidden = true
    }
    @IBAction func logIn(_ sender: Any) {
        performSegue(withIdentifier: "toThirdVC", sender: nil)
        
        LoadingIndicator.isHidden = false
    }
    
}
