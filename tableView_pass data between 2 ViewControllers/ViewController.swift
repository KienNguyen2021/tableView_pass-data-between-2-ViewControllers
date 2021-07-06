//
//  ViewController.swift
//  tableView_pass data between 2 ViewControllers
//
//  Created by Kien Nguyen on 2021-07-06.
//

import UIKit


// Drag 2 View Controller

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: NSNotification.Name("text"), object: nil)
    }

    // Create another function :
    
    @objc func didGetNotification(_ notification: Notification){
        
        let text = notification.object as! String?
        
        label.text = text
    }
    
    
    @IBAction func didTapButton(){
        
        let vc = storyboard?.instantiateViewController(identifier:"other") as! OtherViewController
        
        vc.modalPresentationStyle = .fullScreen
        
 //       vc.completionHandler = {text in
        
   //         self.label.text = text
 //   }
        present(vc, animated: true)
    
}

}
