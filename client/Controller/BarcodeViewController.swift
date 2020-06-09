//
//  BarcodeViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit

class BarcodeViewController: UIViewController {

    @IBOutlet weak var image_qr: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user_name = UserDefaults.standard.string(forKey: "user_name") ?? ""
        let user_id = UserDefaults.standard.string(forKey: "user_id") ?? ""
        let q_1 = UserDefaults.standard.integer(forKey: "q_1")
        let q_2 = UserDefaults.standard.integer(forKey: "q_2")
        let q_3 = UserDefaults.standard.integer(forKey: "q_3")
        let q_4 = UserDefaults.standard.integer(forKey: "q_4")
        
        let image = generateQRCode(from: user_name + user_id + "\(q_1)" + "\(q_2)" + "\(q_3)" + "\(q_4)" + "this is qr test")
        image_qr.image = image
    }

    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue("H", forKey: "inputCorrectionLevel")
            let transform = CGAffineTransform(scaleX: 10, y: 10)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        return nil
    }
    
    @IBAction func ActionBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
