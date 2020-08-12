//
//  DetailVC.swift
//  ভর্তা বাঙ্গালিয়ানা ১০১
//
//  Created by Asif's Mac on 10/8/20.
//  Copyright © 2020 Asif's Mac. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var xxx: UIView!
    @IBOutlet weak var yyy: UIView!
    var vortaImg = UIImage()
    var vortaName = ""
    
    @IBOutlet weak var upokoronView: UIView!
    @IBOutlet weak var pronalyView: UIView!
    
    @IBOutlet weak var textlbl1: UILabel!
    @IBOutlet weak var textlbl2: UILabel!
    
    @IBOutlet weak var vortaNamelbl: UILabel!
    @IBOutlet weak var vortaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vortaImage.image = vortaImg
        vortaNamelbl.text = vortaName
        
        vortaImage.layer.cornerRadius = 12.0
        //vortaImage.layer.masksToBounds = false
        
        xxx.layer.cornerRadius = 12.0
        xxx.layer.masksToBounds = true
        
        yyy.layer.cornerRadius = 12.0
        yyy.layer.masksToBounds = true
        
        if vortaNamelbl.text == "কাঁচামরিচ ভর্তা"{
            textlbl1.text = """
            -কাঁচামরিচ ২০ টি। \n-পেয়াজ কুচি ১ কাপ। \n-রসুন কুচি হাফ কাপ। \n-ধনে পাতা কুচি ১ টেবিল চামচ। \n-সরিষার তেল ২ টেবিল চামচ। \n-লবন স্বাদ মত।\n
            """
            textlbl2.text = """
            পেনে তেল দিয়ে মরিচ,পেয়াজ,রসুন ভেজে নিন বাদামি করে, শেষে ধনিয়া পাতা দিয়ে নেড়ে নামিয়ে নিন।
            \n\nএবার শিল পাটায় মিহি করে বেটে নিন সব একসাথে করে।
            এবার পরিমিত লবন আর তেল দিয়ে মেখে ভর্তা বানিয়ে নিন।
            \n\nতৈরি আপনার কাঁচামরিচ ভর্তা।\n
            """
            
            
            
            
//            textlbl1.layer.borderWidth = 2
//            textlbl1.layer.borderColor = UIColor.gray.cgColor
//            textlbl1.layer.shadowColor = UIColor.black.cgColor
//            textlbl1.layer.shadowOffset = .zero
//            textlbl1.layer.shadowRadius = 8
//            textlbl1.layer.shadowOpacity = 1
            textlbl1.layer.cornerRadius = 12.0
            textlbl1.layer.masksToBounds = false
            
//            textlbl2.layer.borderWidth = 2
//            textlbl2.layer.borderColor = UIColor.gray.cgColor
//            textlbl2.layer.shadowColor = UIColor.black.cgColor
//            textlbl2.layer.shadowOffset = .zero
//            textlbl2.layer.shadowRadius = 8
//            textlbl2.layer.shadowOpacity = 1
            textlbl2.layer.cornerRadius = 12.0
            textlbl2.layer.masksToBounds = false
            
        }
        
    }
    
}
