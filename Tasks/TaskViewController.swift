//
//  TaskViewController.swift
//  Tasks
//
//  Created by Lu, Chia-Ruey on 9/25/22.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var positionLabel: UILabel!
    
    var task: String!
    
    var currentPosition: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        print(currentPosition)
        positionLabel.text = String(currentPosition)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
//        let newCount = count - 1
//        
//        UserDefaults().setValue(newCount, forKey: "count")
//        UserDefaults().set(nill, forKey: "task_\(currentPosition)")
        
    }
}
