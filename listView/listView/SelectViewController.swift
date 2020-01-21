//
//  SelectViewController.swift
//  listView
//
//  Created by apple on 1/21/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {

    @IBOutlet weak var showTodayOutlet: UIButton!
    @IBOutlet weak var showAnimalOutlet: UIButton!
    @IBOutlet weak var showFootOutlet: UIButton!
    override func viewDidLoad() {
        showFootOutlet.layer.cornerRadius = 30
        showAnimalOutlet.layer.cornerRadius = 30
        showTodayOutlet.layer.cornerRadius = 30
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func foodList(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "FoodViewController") as! FoodViewController
             self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func animalList(_ sender: Any) {
        let vc1 = self.storyboard?.instantiateViewController(identifier: "AnimalViewController") as! AnimalViewController
                    self.navigationController?.pushViewController(vc1, animated: true)
    }
    
    
    @IBAction func todayList(_ sender: Any) {
        
        let vc2 = self.storyboard?.instantiateViewController(identifier: "TodayViewController") as! TodayViewController
        self.navigationController?.pushViewController(vc2, animated: true)
        
    }
    
    
}
