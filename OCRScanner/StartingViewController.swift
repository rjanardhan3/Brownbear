//
//  StartingViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/23/21.
//

import UIKit

class StartingViewController: UIViewController {

    @IBOutlet weak var custcomp: UISegmentedControl!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var uname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signIn(_ sender: Any) {
        if (uname.text == "") {
            let alert = UIAlertController(title: "Empty Name", message: "Your name is empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true);
        }
        else if (pass.text == "") {
            let alert = UIAlertController(title: "Empty Password", message: "You can't have an empty password", preferredStyle: .alert);
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true);
        }
        else {
            print(custcomp.selectedSegmentIndex)
            if (custcomp.selectedSegmentIndex == 0) {
                performSegue(withIdentifier: "customer", sender: nil)
            } else {
                performSegue(withIdentifier: "SignIn", sender: nil)
            }
        }
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //if (custcomp.text == "Customer") {
            
        //}
        
    }
    

}
