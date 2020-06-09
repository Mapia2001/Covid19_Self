//
//  ResultViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label_name: UILabel!
    @IBOutlet weak var label_id: UILabel!
    @IBOutlet weak var label_from: UILabel!
    @IBOutlet weak var label_to: UILabel!
    @IBOutlet weak var image_status: UIImageView!
    @IBOutlet weak var label_status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label_name.text = UserDefaults.standard.string(forKey: "user_name")
        label_id.text = UserDefaults.standard.string(forKey: "user_id")
        label_from.text = UserDefaults.standard.string(forKey: "date_start")
        label_to.text = UserDefaults.standard.string(forKey: "date_end")
        switch UserDefaults.standard.integer(forKey: "user_status") {
            case 1:
                image_status.image = UIImage(named: "doctor")
                label_status.text = "You have screened positive. Do not proceed to work. We recommend that you seek medical attention and get tested."
            case 2:
                image_status.image = UIImage(named: "isolate")
                label_status.text = "You have screened possibly positive. Do not proceed to work. We recommend that you seek medical attention."
            case 3:
                image_status.image = UIImage(named: "work")
                label_status.text = "You are cleared to work. Follow all guidelines on social distancing and sanitizing."
            default:
                image_status.image = UIImage(named: "work")
                label_status.text = "You are cleared to work. Follow all guidelines on social distancing and sanitizing."
        }
    }
    @IBAction func ActionVerify(_ sender: Any) {
        if let barcodeVC = (self.storyboard?.instantiateViewController(withIdentifier: "BarcodeVC") as? BarcodeViewController) {
            self.navigationController?.pushViewController(barcodeVC, animated: true)
        }
    }
    @IBAction func ActionHistory(_ sender: Any) {
        if let historyVC = (self.storyboard?.instantiateViewController(withIdentifier: "HistoryVC") as? HistoryViewController) {
            self.navigationController?.pushViewController(historyVC, animated: true)
        }
    }
}
