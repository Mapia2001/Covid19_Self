//
//  Question1ViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit

class Question1ViewController: UIViewController {

    @IBOutlet weak var btn_radio_1: UIButton!
    @IBOutlet weak var btn_radio_2: UIButton!
    @IBOutlet weak var btn_radio_3: UIButton!
    @IBOutlet weak var btn_radio_4: UIButton!
    @IBOutlet weak var btn_radio_5: UIButton!
    @IBOutlet weak var btn_radio_6: UIButton!
    @IBOutlet weak var btn_radio_7: UIButton!
    @IBOutlet weak var btn_radio_8: UIButton!
    @IBOutlet weak var btn_radio_9: UIButton!
    @IBOutlet weak var btn_radio_10: UIButton!
    @IBOutlet weak var btn_radio_11: UIButton!
    @IBOutlet weak var btn_radio_12: UIButton!
    @IBOutlet weak var btn_radio_13: UIButton!
    @IBOutlet weak var btn_radio_14: UIButton!
    @IBOutlet weak var btn_radio_15: UIButton!
    @IBOutlet weak var btn_radio_16: UIButton!
    @IBOutlet weak var btn_radio_17: UIButton!
    @IBOutlet weak var btn_radio_18: UIButton!
    @IBOutlet weak var btn_radio_19: UIButton!
    @IBOutlet weak var btn_radio_20: UIButton!
    @IBOutlet weak var btn_radio_21: UIButton!
    @IBOutlet weak var btn_radio_22: UIButton!
    @IBOutlet weak var btn_next: UIButton!
    
    var flag_1 = false
    var flag_2 = false
    var flag_3 = false
    var flag_4 = false
    var flag_5 = false
    var flag_6 = false
    var flag_7 = false
    var flag_8 = false
    var flag_9 = false
    var flag_10 = false
    var flag_11 = false
    var q = [Int](repeating: 0, count: 12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkNextValidation()
    }
    func checkNextValidation() {
        if(flag_1 && flag_2 && flag_3 && flag_4 && flag_5 && flag_6 && flag_7 && flag_8 && flag_9 && flag_10 && flag_11) {
            btn_next.isEnabled = true
            btn_next.setTitleColor(UIColor.white, for: .normal)
            btn_next.setBackgroundColor(UIColor.link, for: .normal)
        } else {
            btn_next.isEnabled = false
            btn_next.setTitleColor(UIColor.darkGray, for: .normal)
            btn_next.setBackgroundColor(UIColor.white, for: .normal)
        }
    }
    @IBAction func ActionRadio_1(_ sender: Any) {
        flag_1 = true
        q[1] = 1
        btn_radio_1.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_2.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_2(_ sender: Any) {
        flag_1 = true
        q[1] = 0
        btn_radio_2.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_1.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_3(_ sender: Any) {
        flag_2 = true
        q[2] = 1
        btn_radio_3.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_4.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_4(_ sender: Any) {
        flag_2 = true
        q[2] = 0
        btn_radio_4.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_3.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
    }
    @IBAction func ActionRadio_5(_ sender: Any) {
        flag_3 = true
        q[3] = 1
        btn_radio_5.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_6.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_6(_ sender: Any) {
        flag_3 = true
        q[3] = 0
        btn_radio_6.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_5.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_7(_ sender: Any) {
        flag_4 = true
        q[4] = 1
        btn_radio_7.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_8.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_8(_ sender: Any) {
        flag_4 = true
        q[4] = 0
        btn_radio_8.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_7.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_9(_ sender: Any) {
        flag_5 = true
        q[5] = 1
        btn_radio_9.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_10.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
    }
    @IBAction func ActionRadio_10(_ sender: Any) {
        flag_5 = true
        q[5] = 0
        btn_radio_10.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_9.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_11(_ sender: Any) {
        flag_6 = true
        q[6] = 1
        btn_radio_11.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_12.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_12(_ sender: Any) {
        flag_6 = true
        q[6] = 0
        btn_radio_12.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_11.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_13(_ sender: Any) {
        flag_7 = true
        q[7] = 1
        btn_radio_13.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_14.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
    }
    @IBAction func ActionRadio_14(_ sender: Any) {
        flag_7 = true
        q[7] = 0
        btn_radio_14.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_13.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_15(_ sender: Any) {
        flag_8 = true
        q[8] = 1
        btn_radio_15.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_16.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_16(_ sender: Any) {
        flag_8 = true
        q[8] = 0
        btn_radio_16.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_15.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_17(_ sender: Any) {
        flag_9 = true
        q[9] = 1
        btn_radio_17.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_18.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_18(_ sender: Any) {
        flag_9 = true
        q[9] = 0
        btn_radio_18.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_17.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_19(_ sender: Any) {
        flag_10 = true
        q[10] = 1
        btn_radio_19.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_20.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_20(_ sender: Any) {
        flag_10 = true
        q[10] = 0
        btn_radio_20.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_19.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_21(_ sender: Any) {
        flag_11 = true
        q[11] = 1
        btn_radio_21.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_22.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_22(_ sender: Any) {
        flag_11 = true
        q[11] = 0
        btn_radio_22.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_21.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionNext(_ sender: Any) {
        let exposure_count = q[1] + q[3]
        UserDefaults.standard.set(exposure_count, forKey: "exposure")
        let declaration_count = q[1] + q[2] + q[3] + q[4] + q[5] + q[6] + q[7] + q[8] + q[9] + q[10] + q[11]
        UserDefaults.standard.set(declaration_count, forKey: "declaration")
        if let question2VC = (self.storyboard?.instantiateViewController(withIdentifier: "Question2VC") as? Question2ViewController) {
            self.navigationController?.pushViewController(question2VC, animated: true)
        }
    }
}
