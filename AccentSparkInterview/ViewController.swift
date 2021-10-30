//
//  ViewController.swift
//  AccentSparkInterview
//
//  Created by Sandip Das on 29/10/21.
//

import UIKit
import AFNetworking

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //sending request to API and reloading tableView Cell
        let networkManager = NetworkManager()
        networkManager.sendRequest(tableView: tableView)
        self.tableView.reloadData()
    }
    

}


//MARK:- Table View Configuration

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = userDataArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.userIconImageView.setImageWith(URL(string: user.userImageName)!)
        cell.nameLabel.text = user.name
        cell.userNameLabel.text = user.username
        cell.vipImageLabel.image = UIImage(named: user.vipLabel)
        cell.followersCountLabel.text = "\(user.followersCount) followers"
        cell.addRemoveFriendButton.image = UIImage(named: "addFriend.svg")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
}








