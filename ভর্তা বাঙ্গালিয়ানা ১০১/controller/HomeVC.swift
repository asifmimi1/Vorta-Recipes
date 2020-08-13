//
//  ViewController.swift
//  ভর্তা বাঙ্গালিয়ানা ১০১
//
//  Created by Asif's Mac on 9/8/20.
//  Copyright © 2020 Asif's Mac. All rights reserved.
//

import SideMenu
import UIKit

class ViewController: UIViewController, MenuNavControllerDelegate {
    
    
    let vortaItemArray = ["কাঁচামরিচ ভর্তা", "বেগুন ভর্তা", "বেগুন পুড়ে ভর্তা", "শুকনা মরিচ ভর্তা", "চেপা শুটকি ভর্তা"]
    var sMenu: UISideMenuNavigationController?
    
    
    let favoriteVC = FavoriteVC()
    let aboutUsVC = AboutUsVC()
    let shareVC = ShareVC()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sMenu?.setNavigationBarHidden(true, animated: false)
        
        let item = MenuNC(with: ["Home", "Favorite", "Share", "About Us"])
        
        sMenu = UISideMenuNavigationController(rootViewController: item)
        item.delegate = self
        sMenu?.leftSide = true
        SideMenuManager.default.menuAddPanGestureToPresent(toView: view)
        SideMenuManager.default.menuLeftNavigationController = sMenu
        
        addChildrenVC()
    }
    
    func addChildrenVC()  {
        
        addChild(favoriteVC)
        addChild(aboutUsVC)
        addChild(shareVC)
        
        view.addSubview(favoriteVC.view)
        view.addSubview(aboutUsVC.view)
        view.addSubview(shareVC.view)
        
        favoriteVC.view.frame = view.bounds
        aboutUsVC.view.frame = view.bounds
        shareVC.view.frame = view.bounds
        
        favoriteVC.didMove(toParent: self)
        aboutUsVC.didMove(toParent: self)
        shareVC.didMove(toParent: self)
        
        favoriteVC.view.isHidden = true
        aboutUsVC.view.isHidden = true
        shareVC.view.isHidden = true
    }
    
    @IBAction func sidemenu(_ sender: UIBarButtonItem) {
        present(sMenu!, animated: true, completion: nil)
    }
    
    func didSelectMenuItem(named: String) {
        sMenu?.dismiss(animated: true, completion: nil)
        
        if named == "Home"{
            self.title = "ভর্তা বাঙ্গালিয়ানা"
            favoriteVC.view.isHidden = true
            aboutUsVC.view.isHidden = true
            shareVC.view.isHidden = true
        }else if named == "Favorite"{
            self.title = named
            favoriteVC.view.isHidden = false
            aboutUsVC.view.isHidden = true
            shareVC.view.isHidden = true
        }else if named == "Share"{
            self.title = named
            favoriteVC.view.isHidden = true
            aboutUsVC.view.isHidden = true
            shareVC.view.isHidden = false
        }else if named == "About Us"{
            self.title = named
            favoriteVC.view.isHidden = true
            aboutUsVC.view.isHidden = false
            shareVC.view.isHidden = true
        }
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


