//
//  LoginViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit
import CSV

class LoginViewController: UIViewController {

    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_id: UITextField!
    @IBOutlet weak var btn_check: UIButton!
    @IBOutlet weak var btn_next: UIButton!
    
    var checkStatus = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt_name.addTarget(self, action: #selector(changeName), for: .editingChanged)
        txt_id.addTarget(self, action: #selector(changeID), for: .editingChanged)
        
        checkNextValidation()

    }
    func checkNextValidation() {
        if((txt_id.text != "") && (txt_name.text != "") && checkStatus) {
            btn_next.isEnabled = true
            btn_next.setTitleColor(UIColor.white, for: .normal)
            btn_next.setBackgroundColor(UIColor.link, for: .normal)
        } else {
            btn_next.isEnabled = false
            btn_next.setTitleColor(UIColor.darkGray, for: .normal)
            btn_next.setBackgroundColor(UIColor.white, for: .normal)
        }
    }
    @objc func changeName() {
        checkNextValidation()
    }
    @objc func changeID() {
        checkNextValidation()
    }
    @IBAction func ActionCheck(_ sender: Any) {
        checkStatus = !checkStatus
        checkNextValidation()
        if (checkStatus) {
            btn_check.setBackgroundImage(UIImage(named: "icon_checked"), for: UIControl.State.normal)
        } else {
            btn_check.setBackgroundImage(UIImage(named: "icon_check"), for: UIControl.State.normal)
        }
    }
    @IBAction func ActionLink(_ sender: Any) {
        guard let url = URL(string: "http://ambium.net/_m/app-terms.html") else { return }
        UIApplication.shared.open(url)
    }
    @IBAction func ActionNext(_ sender: Any) {
        let record_flag = UserDefaults.standard.integer(forKey: "record_exist")
        let record_first = UserDefaults.standard.integer(forKey: "record_first")
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        .appendingPathComponent("history" + ".csv")
        print(fileURL.path)
        if(record_flag == 0) {
            UserDefaults.standard.set(1, forKey: "record_exist")
            let outputStream = OutputStream(toFileAtPath: fileURL.path, append: false)!
            let initCSV = try! CSVWriter(stream: outputStream)
            
            try! initCSV.write(row: ["name","id","user_status", "start_date", "end_date"])
            initCSV.stream.close()
        }
        
        let stream = InputStream(fileAtPath: fileURL.path)!
        let csv = try! CSVReader(stream: stream, hasHeaderRow: true)
        if (record_first == 0) {
            UserDefaults.standard.set(1, forKey: "record_first")
            if let questionVC = (self.storyboard?.instantiateViewController(withIdentifier: "Question1VC") as? Question1ViewController) {
                self.navigationController?.pushViewController(questionVC, animated: true)
            }
        } else {
            var exist_flag = false
            while csv.next() != nil {
                if ((csv["name"]! == txt_name.text) && (csv["id"]! == txt_id.text) && (txt_name.text != "") && (txt_id.text != "")) {
                    let str_end_date = csv["end_date"]
                    let format = DateFormatter()
                    format.timeZone = TimeZone.ReferenceType.local
                    format.dateFormat = "MM/dd/yyyy'T'HH:mm:ss"
                    format.locale = Locale(identifier: "en_US_POSIX")
                    let end_Date : Date = format.date(from: str_end_date!)!
                    let current_Date = Date()
                    
                    if(end_Date > current_Date) {
                        UserDefaults.standard.set(Int(csv["user_status"]!) ?? 0, forKey: "user_status")
                        UserDefaults.standard.set(csv["start_date"], forKey: "date_start")
                        UserDefaults.standard.set(csv["end_date"], forKey: "date_end")
                        exist_flag = true
                    }
                }
            }
            if exist_flag {
                if let resultVC = (self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultViewController) {
                    self.navigationController?.pushViewController(resultVC, animated: true)
                }
            } else {
                if let questionVC = (self.storyboard?.instantiateViewController(withIdentifier: "Question1VC") as? Question1ViewController) {
                    self.navigationController?.pushViewController(questionVC, animated: true)
                }
            }
        }
        
        UserDefaults.standard.set(txt_name.text, forKey: "user_name")
        UserDefaults.standard.set(txt_id.text, forKey: "user_id")
    }
}
