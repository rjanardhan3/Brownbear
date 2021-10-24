//
//  ItemViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/24/21.
//

import UIKit
import Firebase
import DropDown

class ItemViewController: UIViewController {

    @IBOutlet weak var txt: UILabel!
    @IBOutlet weak var dd: UIView!
    //@IBOutlet weak var txt: UILabel!
   // @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var tv: UITableView!
    var arr = ["Yeezy Red Octobers            (Size 9)", "Levi Jeans            (Size 32)", "Nike Cap           (Size L)"]
    var arr2 = ["Raj Janardhan", "Shubhankar Baliyan", "Tejas Lokeshrao"]
    var arr3 = ["Abecrombie Hoodie            (Size M)", "AE Shirt            (Size S", "Adidas Sweatshirt            (Size XS"];
    let dropDown = DropDown();
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.delegate = self;
        tv.dataSource = self;
        dropDown.anchorView = dd;
       dropDown.dataSource = arr2;
        txt.text = "Find customers";
       dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
           self.txt.text = arr2[index]
           let indexPath = IndexPath(row: index, section: 0);
           let cell = tv.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
           self.arr.remove(at: 0);
           self.arr.append(arr3[index])
           self.tv.reloadData()
       }
        //tv.delegate = self;
       // tv.dataSource = self;
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickbutton(_ sender: Any) {
        dropDown.show()
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
extension ItemViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
}
extension ItemViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
}

