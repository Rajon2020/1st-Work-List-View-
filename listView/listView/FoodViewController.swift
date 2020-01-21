//
//  ViewController.swift
//  rajtable1
//
//  Created by apple on 1/19/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
let element = ["Banana","Apple","Mango","Orange"]
class FoodViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    

    @IBOutlet weak var foodview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.title = "Food List"
        // Do any additional setup after loading the view.
    }

    //MARK: Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return element.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = foodview.dequeueReusableCell(withIdentifier: "food")
          cell?.textLabel?.text = element[indexPath.row]
          cell?.accessoryType = .disclosureIndicator
          return cell!
        
      }
      
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedTrail = element[indexPath.row]
//
//          let vc = self.storyboard?.instantiateViewController(identifier: "AnimalViewController") as! AnimalViewController
//             self.navigationController?.pushViewController(vc, animated: true)

        let alertController = UIAlertController(title: "New alert!", message: "\(element[indexPath.row]) is Good ...", preferredStyle: UIAlertController.Style.alert)

                               alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))

                           self.present(alertController, animated: true, completion: nil)


        }


    
    
    

}

