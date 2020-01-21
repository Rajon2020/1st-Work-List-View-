//
//  TodayViewController.swift
//  listView
//
//  Created by apple on 1/21/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let element = ["Saturday","Sunday","Monday"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return element.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todayList.dequeueReusableCell(withIdentifier: "today")
        cell?.textLabel?.text = element[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.title = "Today List"

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var todayList: UITableView!
    

}
