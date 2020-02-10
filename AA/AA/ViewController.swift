//
//  ViewController.swift
//  tableView
//
//  Created by apple on 1/19/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   
    
    //MARK: IBoutlet
    @IBOutlet weak var tableView: UITableView!
    
    var myArray = ["a","b","c","d","c","e","d","r"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        //cell?.detailTextLabel = myArray[indexPath.row]
        cell?.textLabel?.text = myArray[indexPath.row]
        
        return cell!
    }
}

