//
//  ViewController.swift
//  MyUIKit
//
//  Created by KMUSER on 2024/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }

    @IBAction func didMyButtonTapped(_ sender: Any) {
        myLabel.text = "Hello UIKit"
    }
    
}

