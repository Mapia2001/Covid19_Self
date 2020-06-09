//
//  HistoryViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var label_name: UILabel!
    @IBOutlet weak var label_id: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label_name.text = UserDefaults.standard.string(forKey: "user_name")
        label_id.text = UserDefaults.standard.string(forKey: "user_id")
    }
    @IBAction func ActionBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
