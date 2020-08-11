//
//  ViewController.swift
//  ভর্তা বাঙ্গালিয়ানা ১০১
//
//  Created by Asif's Mac on 9/8/20.
//  Copyright © 2020 Asif's Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let vortaItemArray = ["কাঁচামরিচ ভর্তা", "বেগুন ভর্তা", "বেগুন পুড়ে ভর্তা", "শুকনা মরিচ ভর্তা", "চেপা শুটকি ভর্তা"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

// MARK: - Table View

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    // MARK:- Table view datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vortaItemArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTVC
        cell?.vortaNamelbl.text = vortaItemArray[indexPath.row]
        cell?.vortaImage.image = UIImage(named: vortaItemArray[indexPath.row])
        return cell!
    }
    
    // MARK: Table view delegate
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let goToDetailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC
        self.navigationController?.pushViewController(goToDetailVC!, animated: true)
        
        goToDetailVC?.vortaName = vortaItemArray[indexPath.row]
        goToDetailVC?.vortaImg = UIImage(named: vortaItemArray[indexPath.row])! 
    }
}

