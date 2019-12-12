//
//  DetailTableCell.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/12/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import UIKit

class DetailTableCell: UITableViewCell {

   
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    
  
    var gitUser: GitUser! {
        didSet {
            repoNameLabel.text = gitUser.userEmail
            forksLabel.text = "\(gitUser.userRepo)"
            starLabel.text = "\(gitUser.follower)"
        }
    }

    static let identifier = "DetailTableCell"
}
