//
//  ViewController.swift
//  listView
//
//  Created by apple on 1/21/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    func message(msg:String){
        let alertController = UIAlertController(title: "New alert!", message: msg , preferredStyle: UIAlertController.Style.alert)
            
                        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
        
                    self.present(alertController, animated: true, completion: nil)
        
    }

    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.cornerRadius = 25
        login.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
//info check
    let name = "admin"
    let email = "admin@gmail.com"
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    @IBAction func loginBtn(_ sender: Any) {
    
       
        
        if((userName.text! == "") && (userEmail.text! == "")){
            message(msg: "user name And email is empty....")
             
        }else if(userEmail.text! == "") {
            message(msg: "user email is empty....")
            
                    
            
        }else if(userName.text! == ""){
             message(msg: "user name is empty....")
            
        }else{
            
            if((userName.text! == name) && (userEmail.text! == email)){
                        let vc = self.storyboard?.instantiateViewController(identifier: "SelectViewController") as! SelectViewController
                                    self.navigationController?.pushViewController(vc, animated: true)
                    } else{
                
                message(msg: "Wrong user name or email....")
                        
            
                  }
            
        }
     
       
    }
    
}

