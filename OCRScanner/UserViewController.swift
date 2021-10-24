//
//  UserViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/24/21.
//

import UIKit
import Charts
import TinyConstraints

class UserViewController: UIViewController {
    
    @IBOutlet weak var tv: UITableView!
    //@IBOutlet weak var tv: UITableView!
    var arr = ["Kohl's", "Macy's", "Target", "Ross", "Bed Bath and Beyond", "Nike"]
    lazy var lineChartView: LineChartView = {
      //  lazy var lineChartView: LineChartView = {
            let chartView = LineChartView()
            chartView.backgroundColor = .systemRed
            return chartView
        //}
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tv.delegate = self;
        tv.dataSource = self;
        //lineChartView.wid
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

}
extension UserViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
}
extension UserViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
}
