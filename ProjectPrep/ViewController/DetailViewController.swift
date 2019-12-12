//
//  DetailViewController.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/12/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTableView: UITableView!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var joinDateLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var biographyLabel: UILabel!
    
    
     let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMain()
        // Do any additional setup after loading the view.
    }
    
    private func setupMain(){
           viewModel.get()
           viewModel.delegate = self
           detailTableView.tableFooterView = UIView(frame: .zero)
       }
    
}
extension DetailViewController: ViewModelDelegate {
    
    func update() {
        DispatchQueue.main.async {
            self.detailTableView.reloadData()
        }
    }
}
