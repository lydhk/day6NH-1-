//
//  AddHomeworkViewController.swift
//  day6NH(1)
//
//  Created by Lydia Kang on 8/16/22.
//

import UIKit

class AddHomeworkViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
      let homework = Homework()
        
        if let titleText = titleTextField.text {
            homework.name = titleText
            homework.important = importantSwitch.isOn
        }
    }
    
   

}
