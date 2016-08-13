//
//  ViewController.swift
//  rain
//
//  Created by fendouai on 16/8/12.
//  Copyright © 2016年 fendouai. All rights reserved.
//

import UIKit


class ViewController: UIViewController , UITextFieldDelegate , UITextViewDelegate{
    
    @IBAction func button(sender: UIButton) {
        print("button clicked")
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        textView.delegate=self
        //self.view.addSubview(nameTextField)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(animated: Bool) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        print(nameTextField.text)
        textView.text=nameTextField.text
    }


}

