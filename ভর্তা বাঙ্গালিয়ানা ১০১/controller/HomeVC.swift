//
//  ViewController.swift
//  ভর্তা বাঙ্গালিয়ানা ১০১
//
//  Created by Asif's Mac on 9/8/20.
//  Copyright © 2020 Asif's Mac. All rights reserved.
//

import SideMenu
import UIKit

class ViewController: UIViewController {
    
    let vortaItemArray = ["কাঁচামরিচ ভর্তা", "বেগুন ভর্তা", "বেগুন পুড়ে ভর্তা", "শুকনা মরিচ ভর্তা", "চেপা শুটকি ভর্তা"]
    let sMenu = UISideMenuNavigationController(rootViewController: MenuController(with: ["Home", "Favorite", "Request", "Share", "About Us"]))
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sMenu.leftSide = true
        SideMenuManager.default.menuAddPanGestureToPresent(toView: view)
        SideMenuManager.default.menuLeftNavigationController = sMenu
    }
    
    @IBAction func sidemenu(_ sender: UIBarButtonItem) {
        present(sMenu, animated: true, completion: nil)
    }
    
    
    
}

// MARK: - Table View Custom Cell

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

// MARK: - Table View for SideMenu
class MenuController: UITableViewController {
    private let menuItems: [String]
    
    init(with menuItem: [String]) {
        menuItems = menuItem
        super.init(nibName: nil, bundle: nil)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuItems[indexPath.row]
        return cell
    }
    
    // MARK: Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
}
}
