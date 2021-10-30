//
//  CustomTableViewCell.swift
//  AccentSparkInterview
//
//  Created by Sandip Das on 29/10/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var userIconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var vipImageLabel: UIImageView!
    @IBOutlet weak var followersCountLabel: UILabel!
    @IBOutlet weak var addRemoveFriendButton: UIImageView!
    
    override func layoutSubviews() {
        //Circular Shape to UserIcon
        userIconImageView.clipsToBounds = true
        userIconImageView.layer.cornerRadius = userIconImageView.bounds.width/2
    }
    

}




