//
//  StoriesTableViewController.swift
//  Test
//
//  Created by Hanif Salafi on 02/10/18.
//  Copyright © 2018 Hanif Salafi. All rights reserved.
//

import UIKit

struct Headline {
    var id : Int
    var title : String
    var text : String
    var image : String
}

var myIndex = 0

var headlines = [
    Headline(id: 1, title: "Hanif Salafi", text: "Online", image: "user1"),
    Headline(id: 2, title: "Hanif", text: "Online", image: "user2"),
    Headline(id: 3, title: "Salafi Hanif", text: "Offline", image: "user3"),
]

class StoriesTableViewController: UITableViewController{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
//      To limit number of rows
//        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
       
        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.detailTextLabel?.text = headline.text
        cell.imageView?.image = UIImage(named: headline.image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contact List"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle:   UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            headlines.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .middle)
            tableView.endUpdates()
            tableView.reloadData()
        }
    }
}
