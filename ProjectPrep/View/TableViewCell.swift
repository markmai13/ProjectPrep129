//
//  TableViewCell.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/11/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userRepoLabel: UILabel!
    
    
    
    var gitUser: GitUser! {
        didSet {
            userImage.image = gitUser.userImage
            userNameLabel.text = gitUser.userName
            userRepoLabel.text = "Repo: \(gitUser.userRepo)"
        }
    }

    static let identifier = "TableViewCell"
}
