//
//  CustomerViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/24/21.
//

import UIKit
import DropDown
import Firebase

class CustomerViewController: UIViewController {
    
    @IBOutlet weak var dd: UIView!
    @IBOutlet weak var lab: UILabel!
    
    
    @IBOutlet weak var tv: UITableView!
    let dropDown = DropDown();
    var arr = ["Raj Janardhan", "Yash Arora", "Vineet Galli", "Shubhankar Baliyan"];
    var arr2 = ["Hamburger Buns", "Lettuce", "Tomatoes", "Chicken", "Turkey", "Fish"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown.anchorView = dd;
        dropDown.dataSource = arr;
        lab.text = "Find customers";
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.lab.text = arr[index]
            let indexPath = IndexPath(row: index, section: 0);
            let cell = tv.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
            self.arr2.remove(at: 0);
            self.arr2.append("Potatoes")
            self.tv.reloadData()
        }
        tv.delegate = self;
        tv.dataSource = self;
        // Do any additional setup after loading the view.
    }
    

    @IBAction func initDrop(_ sender: Any) {
        dropDown.show();
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
extension CustomerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
}
extension CustomerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arr2[indexPath.row]
        return cell
        
    }
    
    
}
