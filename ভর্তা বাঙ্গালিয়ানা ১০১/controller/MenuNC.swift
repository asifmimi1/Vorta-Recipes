//
//  MenuNavController.swift
//  ভর্তা বাঙ্গালিয়ানা ১০১
//
//  Created by Asif's Mac on 13/8/20.
//  Copyright © 2020 Asif's Mac. All rights reserved.
//

import Foundation
import UIKit

protocol MenuNavControllerDelegate {
    func didSelectMenuItem(named: String)
}

class MenuNC: UITableViewController {
    
    var delegate: MenuNavControllerDelegate?
    let menuItems: [String]
    
    init(with menuItem: [String]) {
        menuItems = menuItem
        super.init(nibName: nil, bundle: nil)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewDidLoad() {
          super.viewDidLoad()
        tableView.backgroundColor = .white
       // self.navigationController?.navigationBar.backgroundImage(for: )
//        let nav = self.navigationController?.navigationBar
//        nav?.barStyle = UIBarStyle.black
//        nav?.tintColor = UIColor.yellow
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
//        imageView.contentMode = .scaleAspectFit
//        let image = UIImage(named: "cover")
//        imageView.image = image
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
        cell.textLabel?.textColor = .black
        cell.backgroundColor = .white
        return cell
    }
    
    // MARK: Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let itemName = menuItems[indexPath.row]
        delegate?.didSelectMenuItem(named: itemName)
    }
    
}

