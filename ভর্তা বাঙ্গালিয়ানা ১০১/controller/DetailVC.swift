//
//  DetailVC.swift
//  ভর্তা বাঙ্গালিয়ানা ১০১
//
//  Created by Asif's Mac on 10/8/20.
//  Copyright © 2020 Asif's Mac. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var vortaImg = UIImage()
    var vortaName = ""
    
    
    @IBOutlet weak var textlbl1: UILabel!
    @IBOutlet weak var textlbl2: UILabel!
    
    @IBOutlet weak var vortaNamelbl: UILabel!
    @IBOutlet weak var vortaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vortaImage.image = vortaImg
        vortaNamelbl.text = vortaName
        
        let text1 = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum The Extremes of Good and Evil by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."
        let text2 = """
            When you write a string that spans multiple
            lines make sure you start its content on a
            line all of its own, and end it with three
            quotes also on a line of their own.
            Multi-line strings also let you write "quote marks"
            freely inside your strings, which is great!
        """
        
        textlbl1.text = text1
        textlbl2.text = text2
        
        if vortaNamelbl.text == "কাঁচামরিচ ভর্তা"{
            textlbl1.text = """
            -কাঁচামরিচ ২০ টি। \n-পেয়াজ কুচি ১ কাপ। \n-রসুন কুচি হাফ কাপ। \n-ধনে পাতা কুচি ১ টেবিল চামচ। \n-সরিষার তেল ২ টেবিল চামচ। \n-লবন স্বাদ মত।
            """
            textlbl2.text = """
            পেনে তেল দিয়ে মরিচ,পেয়াজ,রসুন ভেজে নিন বাদামি করে, শেষে ধনিয়া পাতা দিয়ে নেড়ে নামিয়ে নিন। \n\nএবার শিল পাটায় মিহি করে বেটে নিন সব একসাথে করে।
            এবার পরিমিত লবন আর তেল দিয়ে মেখে ভর্তা বানিয়ে নিন। \n\nতৈরি আপনার কাঁচামরিচ ভর্তা।
            
            """
            
        }
    }
    
    
    
    
}

