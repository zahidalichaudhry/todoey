//
//  ViewController.swift
//  Todoey
//
//  Created by Zahid Ali on 26/09/2019.
//  Copyright © 2019 Zahid Ali. All rights reserved.
//

import UIKit

class TodoListVC: UITableViewController {

    let itemArry = ["Find Nimo","Watch Movie","Eat Meat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK - Table View DataSource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArry.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell",for: indexPath)
        cell.textLabel?.text = itemArry[indexPath.row]
        return cell
    }

    //MARK - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        
//        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
//            tableView.cellForRow(at: indexPath)?.accessoryType = .none
//        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

//        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

