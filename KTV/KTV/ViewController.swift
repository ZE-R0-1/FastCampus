//
//  LoginViewController.swift
//  KTV
//
//  Created by KMUSER on 2024/02/16.
//

import UIKit

class LoginViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var loginButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.loginButton.layer.cornerRadius = 19
    self.loginButton.layer.borderColor = UIColor(named: "main-brown")?.cgColor
    self.loginButton.layer.borderWidth = 1
  }
  
  
  @IBAction func buttonDidTap(_ sender: Any) {
  }
}

