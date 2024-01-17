//
//  IndigoViewController.swift
//  MyUIKit
//
//  Created by KMUSER on 2024/01/17.
//

import UIKit

class IndigoViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var inputName: String = ""
    var friends: [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = friends.first?.name
    }
}
