//
//  ViewController.swift
//  PersistNamePhone
//
//  Created by IMCS2 on 7/24/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ErrorLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var SaveUpdateOutletButton: UIButton!
    var nameEntered: String = ""
    var numberEntered: String = ""
    
    func textFieldShouldReturn() -> Bool {
        return true
    }
    
    //starting from here
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //to find the path of the file where data is stored
        //        var path: [AnyObject] = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true) as [AnyObject]
        //        let folder: String = path[0] as! String
        //        NSLog("Your NSUserDefaults are stored in this folder: %@/Preferences", folder)
        

        
        nameEntered = (UserDefaults.standard.value(forKey: "name") as? String)!
        numberEntered = (UserDefaults.standard.value(forKey: "number") as? String)!
        
        if (nameEntered.isEmpty == false && numberEntered.isEmpty == false){
             print("this is number entered count \(numberEntered.count)")
            
            nameText.text = nameEntered
             numberText.text = numberEntered
            SaveUpdateOutletButton.setTitle("Update", for: .normal)
            
            
            
            
        }else {
            
            nameText.text = ""
            numberText.text = ""
            SaveUpdateOutletButton.setTitle("Save", for: .normal)
        }
        
        
        
    }
    
//    @IBAction func EnterNameAction(_ sender: Any) {
//        self.view.endEditing(true)
//    }
    
    
    
    
//    @IBAction func nameTextFieldEditingChanged(_ sender: UITextField) {
//
//        if textFieldShouldReturn() {
//            print(textFieldShouldReturn())
//            print(sender.text!)
//           // UserDefaults.standard.set(nameText.text, forKey: "name")
//            if validate(text: sender.text!){
//
//                SaveUpdateOutletButton.setTitle("Save", for: .normal)
//            }else {
//                SaveUpdateOutletButton.setTitle("Update", for: .normal)
//            }
//
//        }
//
//        else {
//            print(sender.text!)
//        }
//
//
//
//    }
    
    
    
   @IBAction func numberTextFieldEditingChanged(_ sender: UITextField) {
        print(sender.text!)

        if textFieldShouldReturn(){
            if ((sender.text?.count) == 10){
                ErrorLabel.text = "thanks for all 10 digits"
                SaveUpdateOutletButton.isEnabled = true
                

            }else if ((sender.text?.count) == 0) {
                SaveUpdateOutletButton.isEnabled = true
                ErrorLabel.text = "no number"
               
            }else {
                ErrorLabel.text = "please enter 10 digits"
                SaveUpdateOutletButton.isEnabled = false
            }




    }
   }
    
//    func validate(text: String)-> Bool {
//        nameEntered = (UserDefaults.standard.value(forKey: "name") as? String)!
//
//        print("this is name entered \(nameEntered)")
//        print("this is name text \(text)")
//        print("this is number entered \(numberEntered)")
//
//        if(nameEntered == text){
//
//            print("already exist")
//            return false
//
//        }else {
//            print("updated")
//            return true
//        }
//    }
    
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func updateSaveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(numberText.text, forKey: "number")
        
        
//        if(numberText.text!.count == 10){
//            print("this is number entered count \(numberEntered.count)")
//
//            // SaveUpdateOutletButton.isEnabled = true
//            //SaveUpdateOutletButton.setTitle("Update", for: .normal)
//            ErrorLabel.text = "Thanks for entering all the 10 digits"
//        }else {
//            SaveUpdateOutletButton.isEnabled = false
//            print("please enter 10 digits")
//        }

        
        
        
        
        
        // print(numberText.text?.count as! Int)
        
        
//        if(nameEntered == nameText.text && numberEntered == numberText.text){
//
//            print("already exist")
//
//        }else {
//            print("updated")
//        }
        
        
        
        
//        if let nameOnDeviceForKey = UserDefaults.standard.value(forKey: "name"){
//            print(nameOnDeviceForKey as! String)
//        }else {
//            print("setting values because name was not there already")
//            UserDefaults.standard.set(nameText.text, forKey: "name")
//
//        }
        
        
    }
    


}

