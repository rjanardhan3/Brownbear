//
//  SignUpViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/23/21.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var choice: UISegmentedControl!
    @IBOutlet weak var confpass: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var uname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func create(_ sender: Any) {
        //print(uname.text);
        
        if (uname.text! == "") {
            let alert = UIAlertController(title: "Empty Username", message: "You can't have an empty username", preferredStyle: .alert);
        
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true);
        } else if (emailAddress.text == "") {
            let alert = UIAlertController(title: "Empty email address", message: "You can't have an empty email address", preferredStyle: .alert);
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true);
        } else if (pass.text == "") {
            let alert = UIAlertController(title: "Empty Password", message: "You can't have an empty password", preferredStyle: .alert);
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true);
        } else if (pass.text != confpass.text) {
            let alert = UIAlertController(title: "Passwords don't equal", message: "The passwords don't match", preferredStyle: .alert);
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil));
            self.present(alert, animated: true);
            //alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil));
        } else {
            //FirebaseAut
            if (choice.selectedSegmentIndex == 0) {
                performSegue(withIdentifier: "customer", sender: nil)
            } else {
                performSegue(withIdentifier: "Signin", sender: nil)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
