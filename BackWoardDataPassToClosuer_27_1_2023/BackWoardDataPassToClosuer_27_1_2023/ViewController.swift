//
//  ViewController.swift
//  BackWoardDataPassToClosuer_27_1_2023
//
//  Created by Mac on 26/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var courseNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnClickToNavigateSVC(_ sender: Any) {
        var secondViewController = (self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController)!
        
        secondViewController.dataFormSecondViewController = {
            (firstName,lastName,courseName)
            in
            print(firstName)
            print(lastName)
            print(courseName)
            self.firstNameLabel.text = firstName
            self.lastNameLabel.text = lastName
            self.courseNameLabel.text = courseName
        }
        self.navigationController?.pushViewController(secondViewController, animated: true)

    }
    
}

