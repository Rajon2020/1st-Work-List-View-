//
//  AnimalViewController.swift
//  listView
//
//  Created by apple on 1/21/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
class AnimalViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let element = ["Tiger","Lion","Monkey","Panda"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return element.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalList.dequeueReusableCell(withIdentifier: "animal")
        cell?.textLabel?.text = element[indexPath.row]
        return cell!
    }
    

    @IBOutlet weak var animalList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Animal List"
        // Do any additional setup after loading the view.
    }
    

}
