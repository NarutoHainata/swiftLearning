//
//  SecondViewController.swift
//  toDoLIst
//
//  Created by tomlelouch on 6/5/16.
//  Copyright © 2016 tomlelouch. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var toDoText: UITextField!
    @IBOutlet weak var descText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func addBtnClick(sender: UIButton) {
        toDoMgr.addToDo(toDoText.text!, desc: descText.text!)
        self.view.endEditing(true)
        toDoText.text = ""
        descText.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }



}

