//
//  CardViewController.swift
//  OCRScanner
//
//  Created by Raj Janardhan on 10/23/21.
//

import UIKit
import Koloda
let images = ["1", "2"];

class CardViewController: UIViewController{
    func koloda(_ koloda: KolodaView, allowedDirectionsForIndex index: Int) -> [SwipeResultDirection] {
        
    }
    
    
    @IBOutlet weak var kolodaView: KolodaView!
    override func viewDidLoad() {
        super.viewDidLoad()
        kolodaView.dataSource = self;
        kolodaView.delegate = self;
        
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
extension ViewController: KolodaViewDelegate {
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        koloda.reloadData();
    }
    
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        let alert = UIAlertController(title: "Test", message: "This test works", preferredStyle: .alert);
        alert.addAction(UIAlertAction(title: "Ok", style: .default));
        self.present(alert, animated: true);
    }
}
extension ViewController: KolodaViewDataSource {
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return images.count;
    }
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = UIImageView(image: UIImage(named: images[index]));
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }
}
