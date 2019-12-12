//
//  ViewModel.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/11/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import Foundation

protocol ViewModelDelegate: class {
    func update()
}


class ViewModel {
   
    weak var delegate: ViewModelDelegate?
    
    var allUsers = [GitUser](){
        didSet {
            users = allUsers
        }
    }
    
    var users = [GitUser]() {
        didSet {
            delegate?.update()
        }
    }
    
    func get() {
        GitService.shared.getUsers { [weak self] userss in self?.allUsers = userss
        }
    }
    
   
}
