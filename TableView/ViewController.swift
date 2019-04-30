//
//  ViewController.swift
//  TableView
//
//  Created by D7703_19 on 2019. 4. 30..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    var animals = ["cat","Horse","Pig","Bird","Whale"]
    var name = ["고양이","말","돼지","새","고래"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
        
        self.title = "Animal Farm"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let myRow = indexPath.row
        
        myCell.textLabel?.text = animals[myRow]
        myCell.detailTextLabel?.text = name[myRow]
        
        // cell에 이미지 넣기
        myCell.imageView?.image = UIImage(named: animals[myRow])
        return myCell
    }
}

