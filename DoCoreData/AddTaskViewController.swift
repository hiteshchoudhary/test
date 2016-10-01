//
//  AddTaskViewController.swift
//  DoCoreData
//
//  Created by studio on 21/09/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var isImp: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnTapped(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textField.text!
        task.isImportant = isImp.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
        
    }
    

}
