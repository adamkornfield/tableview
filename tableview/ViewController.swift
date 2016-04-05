//
//  ViewController.swift
//  tableview
//
//  Created by Adam Kornfield on 3/30/16.
//  Copyright © 2016 Baron Fig, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet var tableView: UITableView!
    
    
    let animals = ["Monkey","Panda","Penguin","Giraffe"]
    let textCellIdentifier = "textCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInset = UIEdgeInsetsMake(0, 0, 20, 0)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        let row = indexPath.row
        
        cell.textLabel!.text = animals[row]
        cell.imageView?.image = UIImage(named: animals[row].lowercaseString)
        cell.detailTextLabel?.text = "Three bees"
        let backView = UIView()
        let figColor = UIColor(red: 66.0/255.0, green: 23.0/255.0, blue: 41.0/255.0, alpha: 0.4)
        backView.backgroundColor = figColor
        cell.selectedBackgroundView? = backView
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print(animals[row])
        
        
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    




}

