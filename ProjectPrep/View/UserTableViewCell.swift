//
//  UserTableViewCell.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/11/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
  //Adding out let to Table View Cell Controller
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userRepoLabel: UILabel!
    
 //Set identifier for cell
static let identifier = "UserTableViewCell"
    
    var user: GitUser! {
        didSet {
            userImage.image = user.userImage
            userNameLabel.text = user.userName
            userRepoLabel.text = String(user.userRepo)
        }
    }

}
