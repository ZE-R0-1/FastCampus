//
//  ProfileDetailViewController.swift
//  MyUIKit
//
//  Created by KMUSER on 2024/01/18.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var inputText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = inputText
    }
}
