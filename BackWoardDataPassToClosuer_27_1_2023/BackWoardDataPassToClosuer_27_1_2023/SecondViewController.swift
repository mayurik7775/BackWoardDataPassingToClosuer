//
//  SecondViewController.swift
//  BackWoardDataPassToClosuer_27_1_2023
//
//  Created by Mac on 26/01/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var courseNameTextField: UITextField!
    
    var firstName : String = ""
    var lastName : String = ""
    var courseName : String = ""
    
    var dataFormSecondViewController : ((String,String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
    @IBAction func btnClickToNavigateFVC(_ sender: Any) {
        guard let dataOnSVC = dataFormSecondViewController else {
            return
        }
        firstName = self.firstNameTextField.text!
        lastName = self.lastNameTextField.text!
        courseName = self.courseNameTextField.text!
        
        print(firstName)
        
        dataOnSVC(firstName, lastName, courseName)
        
        navigationController?.popViewController(animated: true)
    }
    
}
