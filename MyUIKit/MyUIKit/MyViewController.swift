//
//  MyViewController.swift
//  MyUIKit
//
//  Created by KMUSER on 2024/01/17.
//

import UIKit

protocol AdiminDelegate {
    func doTask()
}

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var admin: Admin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red // 디버깅 컬러
        admin = Admin(delegate: self)
        admin?.delegate = self
    }
    
    
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text {
            helloLabel.text = "Hello \(name)!!!"
        }
        admin?.delegate.doTask()
    }
}

extension MyViewController: AdiminDelegate {
    func doTask() {
        print("저 지금 일 잘하고 있습니다!")
    }
}

struct Admin {
    var delegate: AdiminDelegate
}
