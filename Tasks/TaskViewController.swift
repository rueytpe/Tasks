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
    
    var update: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        print(currentPosition!)
        positionLabel.text = String(currentPosition)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
//        let newCount = count - 1
//        
//        UserDefaults().setValue(newCount, forKey: "count")
//        UserDefaults().set(nill, forKey: "task_\(currentPosition)")
        
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }

        var newkey = "task_" + positionLabel.text! ;
        UserDefaults().set(nil, forKey: newkey)

        let intPosition = Int(positionLabel.text!)!
        
        for x in intPosition..<count {

            if let task = UserDefaults().value(forKey: "task_\(x+2)") as? String {
                UserDefaults().set(task, forKey: "task_\(x+1)")
            }
            
        }
        
        let newCount = count - 1
        
        UserDefaults().set(newCount, forKey: "count")
        
        update?()
        
        navigationController?.popViewController(animated: true)
        
    }
}
