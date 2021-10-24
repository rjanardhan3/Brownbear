//
//  TargetViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/24/21.
//

import UIKit

class TargetViewController: UIViewController {

    @IBOutlet weak var tv: UITableView!
    @IBOutlet weak var slider: UISlider!
    var arr = ["Tom Brady", "Rob Smith", "Tejas Das"]
    var arr2 = ["Tom Brady", "Rob Smith", "Tejas Das", "Sahil Sharma", "Ben Wallace", "Tim Cook", "Timo Werner"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.delegate = self;
        tv.dataSource = self;
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func sliderChanged(_ sender: Any) {
        var currentValue = slider.value;
        var x:Int = Int(currentValue*7);
        
        arr.removeAll();
        for i in 0..<x {
            arr.append(arr2[i]);
        }
        tv.reloadData();
        //print(currentValue);
    }
    
}
extension TargetViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
}
extension TargetViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
}
