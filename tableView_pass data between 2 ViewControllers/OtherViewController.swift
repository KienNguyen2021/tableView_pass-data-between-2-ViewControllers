//
//  OtherViewController.swift
//  tableView_pass data between 2 ViewControllers
//
//  Created by Kien Nguyen on 2021-07-06.
//

import UIKit

class OtherViewController: UIViewController {
    
    
    @IBOutlet var field: UITextField!
    
    
 //   public var completionHandler:((String?) ->Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // For button to save the text, and it will appear in the Label in the Main screen:
    
    @IBAction func didTapSave(){
        
  //      completionHandler?(field.text)
        
        NotificationCenter.default.post(name: Notification.Name("text"), object: field.text)
        
        dismiss(animated: true, completion: nil)
    }


}
