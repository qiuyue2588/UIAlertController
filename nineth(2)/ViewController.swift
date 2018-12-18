//
//  ViewController.swift
//  nineth(2)
//
//  Created by student on 2018/12/6.
//  Copyright © 2018年 qiuyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "this is an ation sheet", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Yellow", style: .default, handler: { (action) in
            print("ok clicked")
            self.view.backgroundColor = UIColor.yellow
        }))
        alert.addAction(UIAlertAction(title: "Purple", style: .destructive, handler: { (action) in
            print("destructive clicked")
            self.view.backgroundColor = UIColor.purple
        }))
        alert.addAction(UIAlertAction(title: "White", style: .cancel, handler: { (action) in
            print("cancel clicked")
            self.view.backgroundColor = UIColor.white
        }))
        
        present(alert, animated: true, completion: nil)
        
    }
    @IBAction func login(_ sender: Any) {
        let alert = UIAlertController(title: "Login", message: "Please input your personal information", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: { (action) in
            if let userNameTextField = alert.textFields?.first, let passWordTextField = alert.textFields?.last {
                print("username:\(userNameTextField.text!) password:\(passWordTextField.text!)")
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
        }))
        
        alert.addTextField { (textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
        
    }

}

