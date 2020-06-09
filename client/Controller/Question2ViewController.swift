//
//  Question2ViewController.swift
//  client
//
//  Created by Hodu on 6/8/20.
//  Copyright © 2020 Hodu. All rights reserved.
//

import UIKit

class Question2ViewController: UIViewController {

    @IBOutlet weak var btn_radio_23: UIButton!
    @IBOutlet weak var btn_radio_24: UIButton!
    @IBOutlet weak var btn_radio_25: UIButton!
    @IBOutlet weak var btn_radio_26: UIButton!
    @IBOutlet weak var btn_radio_27: UIButton!
    @IBOutlet weak var btn_radio_28: UIButton!
    @IBOutlet weak var btn_radio_29: UIButton!
    @IBOutlet weak var btn_radio_30: UIButton!
    @IBOutlet weak var btn_radio_31: UIButton!
    @IBOutlet weak var btn_radio_32: UIButton!
    @IBOutlet weak var btn_radio_33: UIButton!
    @IBOutlet weak var btn_radio_34: UIButton!
    @IBOutlet weak var btn_radio_35: UIButton!
    @IBOutlet weak var btn_radio_36: UIButton!
    @IBOutlet weak var btn_radio_37: UIButton!
    @IBOutlet weak var btn_radio_38: UIButton!
    @IBOutlet weak var btn_next: UIButton!
    
    var flag_12 = false
    var flag_13 = false
    var flag_14 = false
    var flag_15 = false
    var flag_16 = false
    var flag_17 = false
    var flag_18 = false
    var flag_19 = false
    var q = [Int](repeating:0, count: 8)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
       swipe.direction = .right

       view.addGestureRecognizer(swipe)
    }
    func checkNextValidation() {
        if(flag_12 && flag_13 && flag_14 && flag_15 && flag_16 && flag_17 && flag_18 && flag_19) {
            btn_next.isEnabled = true
            btn_next.setTitleColor(UIColor.white, for: .normal)
            btn_next.setBackgroundColor(UIColor.link, for: .normal)
        } else {
            btn_next.isEnabled = false
            btn_next.setTitleColor(UIColor.darkGray, for: .normal)
            btn_next.setBackgroundColor(UIColor.white, for: .normal)
        }
    }
    @objc func swipeRight() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func ActionRadio_23(_ sender: Any) {
        flag_12 = true
        q[0] = 1
        btn_radio_23.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_24.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_24(_ sender: Any) {
        flag_12 = true
        q[0] = 0
        btn_radio_24.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_23.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_25(_ sender: Any) {
        flag_13 = true
        q[1] = 1
        btn_radio_25.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_26.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_26(_ sender: Any) {
        flag_13 = true
        q[1] = 0
        btn_radio_26.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_25.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_27(_ sender: Any) {
        flag_14 = true
        q[2] = 1
        btn_radio_27.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_28.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_28(_ sender: Any) {
        flag_14 = true
        q[2] = 0
        btn_radio_28.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_27.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_29(_ sender: Any) {
        flag_15 = true
        q[3] = 1
        btn_radio_29.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_30.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_30(_ sender: Any) {
        flag_15 = true
        q[3] = 0
        btn_radio_30.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_29.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_31(_ sender: Any) {
        flag_16 = true
        q[4] = 1
        btn_radio_31.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_32.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_32(_ sender: Any) {
        flag_16 = true
        q[4] = 0
        btn_radio_32.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_31.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_33(_ sender: Any) {
        flag_17 = true
        q[5] = 1
        btn_radio_33.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_34.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_34(_ sender: Any) {
        flag_17 = true
        q[5] = 0
        btn_radio_34.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_33.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_35(_ sender: Any) {
        flag_18 = true
        q[6] = 1
        btn_radio_35.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_36.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_36(_ sender: Any) {
        flag_18 = true
        q[6] = 0
        btn_radio_36.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_35.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_37(_ sender: Any) {
        flag_19 = true
        q[7] = 1
        btn_radio_37.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_38.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionRadio_38(_ sender: Any) {
        flag_19 = true
        q[7] = 0
        btn_radio_38.setBackgroundImage(UIImage(named: "icon_radio_checked"), for: .normal)
        btn_radio_37.setBackgroundImage(UIImage(named: "icon_radio_check"), for: .normal)
        checkNextValidation()
    }
    @IBAction func ActionNext(_ sender: Any) {
        let symptom_count = q[0] + q[1] + q[2] + q[3] + q[4] + q[5] + q[6] + q[7]
        UserDefaults.standard.set(symptom_count, forKey: "symptom")
        if let temperatureVC = (self.storyboard?.instantiateViewController(withIdentifier: "TemperatureVC") as? TemperatureViewController) {
            self.navigationController?.pushViewController(temperatureVC, animated: true)
        }
    }
}
