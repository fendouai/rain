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
    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var PassWord: UITextField!

    @IBOutlet weak var UserLabel: UILabel!
    @IBOutlet weak var PassLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserName.delegate = self
        PassWord.delegate=self
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
        print(UserName.text)
        print(PassWord.text)
        UserLabel.text=UserName.text
        PassLabel.text=PassWord.text
    }
}

