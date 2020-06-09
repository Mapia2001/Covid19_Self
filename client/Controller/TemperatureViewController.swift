//
//  TemperatureViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit
import CSV

class TemperatureViewController: UIViewController {

    @IBOutlet weak var txt_temperature: UITextField!
    @IBOutlet weak var btn_finish: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt_temperature.addTarget(self, action: #selector(changeTemperature), for: .editingChanged)
        checkFinishValidation()
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swipe.direction = .right

        view.addGestureRecognizer(swipe)
    }

    func checkFinishValidation() {
        if Float(txt_temperature.text!) != nil {
            btn_finish.isEnabled = true
            btn_finish.setTitleColor(UIColor.white, for: .normal)
            btn_finish.setBackgroundColor(UIColor.link, for: .normal)
        } else {
            btn_finish.isEnabled = false
            btn_finish.setTitleColor(UIColor.darkGray, for: .normal)
            btn_finish.setBackgroundColor(UIColor.white, for: .normal)
        }
    }
    @objc func swipeRight() {
        navigationController?.popViewController(animated: true)
    }
    @objc func changeTemperature() {
        checkFinishValidation()
    }

    @IBAction func ActionFinish(_ sender: Any) {
        let temperature = Double(txt_temperature.text!) ?? .nan
        if ((temperature >= 34.0) && (temperature <= 40.0)){
            let exposureCount = UserDefaults.standard.integer(forKey: "exposure")
            let symptomCount = UserDefaults.standard.integer(forKey: "symptom")
            let declarationCount = UserDefaults.standard.integer(forKey: "declaration")
            var user_status = 0
            if(temperature >= 38.0 && exposureCount >= 1) {
                user_status = 1
            } else if (temperature >= 38.0 && symptomCount >= 1) {
                user_status = 1
            } else if (exposureCount >= 1 && symptomCount >= 1) {
                user_status = 1
            } else if (temperature >= 38.0 || symptomCount >= 1 || exposureCount >= 1) {
                user_status = 2
            } else if (declarationCount >= 2) {
                user_status = 2
            } else {
                user_status = 3
            }
            UserDefaults.standard.set(user_status, forKey: "user_status")
            
            let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                       .appendingPathComponent("history" + ".csv")
            print(fileURL.path)
            
            let date = Date()
            let endDate = Calendar.current.date(byAdding: .hour, value: 1, to: date)
            let format = DateFormatter()
            format.dateFormat = "MM/dd/yyyy'T'HH:mm:ss"
            let formattedDate = format.string(from: date)
            let formattedEndDate = format.string(from: endDate!)
            UserDefaults.standard.set(formattedDate, forKey: "date_start")
            UserDefaults.standard.set(formattedEndDate, forKey: "date_end")
            
            let stream = OutputStream(toFileAtPath: fileURL.path, append: true)!
            let csv = try! CSVWriter(stream: stream)
            
            let user_name = UserDefaults.standard.string(forKey: "user_name") ?? ""
            let user_id = UserDefaults.standard.string(forKey: "user_id") ?? ""
            
            try! csv.write(row: ["\n" + user_name, user_id, "\(user_status)", formattedDate, formattedEndDate])
            csv.stream.close()
            
            if let resultVC = (self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultViewController) {
                self.navigationController?.pushViewController(resultVC, animated: true)
            }
        } else {
            self.view.makeToast("Please enter your correct body temperature.")
        }
    }
}
