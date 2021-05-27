//
//  ViewController.swift
//  Fruit Array
//
//  Created by user167306 on 2/19/21.
//  Copyright © 2021 user167306. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var fruitTV: UITableView!
    
    var fruits = ["kiwi", "strawberry","raspberrys", "blueberrys", "bananas", "avocados", "lemons", "Limes", "cranberries", "Apples"]
    var vegtables = ["cucumber","carrot","broccoli","corn", "pepper", "lettuce", "tomato","potato","onion", "zuchini"]
    var pics = ["fruitss",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    func alert() {
         let alertController = UIAlertController(title: "ENTER A FRUIT",  message: "ENTER A VEGTABLE" , preferredStyle: .alert)
        alertController.addTextField { (fruitsTF) in
            alertController.addTextField { (vegtablesTF) in
                fruitsTF.placeholder = "Enter a Fruit"
                vegtablesTF.placeholder = "Enter a Vegtable"
                
        let addButton = UIAlertAction(title: "Done", style: .default ) { (ACTION) in
            self.fruits.append(fruitsTF.text!)
            self.vegtables.append(vegtablesTF.text!)
            self.fruitTV.reloadData()
        }
        alertController.addAction(addButton)
    }
        }
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func barButton(_ sender: Any){
    alert()
    }
    
    
    
    // telling the computer how many rows you want
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    //telling the computer what data goes into the row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitCell")
        cell?.textLabel?.text = fruits[indexPath.row]
        cell?.textLabel?.text = vegtables[indexPath.row]
        cell?.self.backgroundColor = .cyan
        cell?.textLabel?.textColor = .magenta
        cell?.textLabel?.font = .monospacedDigitSystemFont(ofSize: 20, weight: .bold)
    
        cell?.imageView?.image = UIImage(named: "fruitss")
        return cell!
    }
}

