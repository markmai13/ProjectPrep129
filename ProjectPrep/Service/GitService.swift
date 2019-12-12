//
//  GitService.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/11/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import Foundation

typealias GitHandler = ([GitUser]) -> Void
final class GitService {
    
    static let shared = GitService()
    private init() {}
    
    func getUsers(completion: @escaping GitHandler){
        
        let users = [ GitUser(userName: "Pussy Cat", userEmail: "cat@email.com", userLocation: "Atlanta", joinDate: "12-6-2019", follower: 3, following: 12, userRepo: 4, userImage: #imageLiteral(resourceName: "cat")),
        GitUser(userName: "Python the Snake", userEmail: "Snake@email.com", userLocation: "San Diego", joinDate: "12-3-2018", follower: 3, following: 19, userRepo: 7, userImage: #imageLiteral(resourceName: "snake")),
        GitUser(userName: "Pluto Dog", userEmail: "dog@email.com", userLocation: "Dallas", joinDate: "11-23-2019", follower: 4, following: 4, userRepo: 12, userImage: #imageLiteral(resourceName: "dog")),
        GitUser(userName: "Tigres Tiger", userEmail: "tiger@email.com", userLocation: "Amazon", joinDate: "1-23-2018", follower: 6, following: 34, userRepo: 15, userImage: #imageLiteral(resourceName: "tiger")),
        GitUser(userName: "Simba Lion", userEmail: "lion@email.com", userLocation: "Madagascar", joinDate: "3-25-2019", follower: 3, following: 12, userRepo: 3, userImage: #imageLiteral(resourceName: "lion")),
        GitUser(userName: "Rabies Racoon", userEmail: "racoon@email.com", userLocation: "Swamp", joinDate: "4-20-2018", follower: 3, following: 15, userRepo: 12, userImage: #imageLiteral(resourceName: "racoon")),
        GitUser(userName: "Bon Bon Aligator", userEmail: "aligator@email.com", userLocation: "Keys Floriday", joinDate: "2-20-2019", follower: 4, following: 12, userRepo: 3, userImage: #imageLiteral(resourceName: "alligator")),
        GitUser(userName: "Foxy Fox", userEmail: "fox@email.com", userLocation: "Santa Fe", joinDate: "4-25-2016", follower: 7, following: 12, userRepo: 4, userImage: #imageLiteral(resourceName: "fox")),
        GitUser(userName: "Gigi Giraffe", userEmail: "giraffe@email.com", userLocation: "Safari", joinDate: "6-15-2012", follower: 3, following: 8, userRepo: 6, userImage: #imageLiteral(resourceName: "giraffe")),
        GitUser(userName: "Lulabi Sheep", userEmail: "sheep@email.com", userLocation: "Dream Land", joinDate: "5-29-2018", follower: 5, following: 12, userRepo: 6, userImage: #imageLiteral(resourceName: "sheep"))
        
        ]
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            completion(users)
        }
        
    }
    
    
    
    
}
