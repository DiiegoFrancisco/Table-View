//
//  ViewController.swift
//  Table View Controller
//
//  Created by DevMakerMobile on 10/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var dados: [String] = ["Item", "Item2", "Item3"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier:celulaReuso , for: indexPath)
        celula.textLabel?.text = dados[indexPath.row]
        
        return celula
        
    }
    
}

