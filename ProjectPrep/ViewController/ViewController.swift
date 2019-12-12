//
//  ViewController.swift
//  ProjectPrep
//
//  Created by Yiet Mai on 12/10/19.
//  Copyright © 2019 Yiet Mai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMain()
        print("hello Mark")
        
    }
  
    private func setupMain(){
        viewModel.get()
        viewModel.delegate = self
        tableView.tableFooterView = UIView(frame: .zero)
    }

}

extension ViewController: UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        let color = indexPath.row.isMultiple(of: 2) ? UIColor.gray : UIColor.white
        cell.backgroundColor = color
        cell.gitUser = viewModel.users[indexPath.row]
        return cell
    }
    
//    private func searchBar(_ searchBar: UISearchBar, textDidChange searchText: Any) {
//        viewModel.users[] = (searchText as AnyObject).isEmpty ? viewModel.users: viewModel.users { (item: String ) -> Bool in
//                      // If dataItem matches the searchText, return true to include it
//                      return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
//                  }
//
//                  tableView.reloadData()
//       }

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//           if segue.identifier == "showNameControllerSegue" {
//               let cell = sender as! UITableViewCell
//               if let indexPath = tableView.indexPath(for: cell) {
//                   let detailController = segue.destination as! DetailViewController
//                tableView.deselectRow(at: indexPath, animated: true)
//               }
//           }
//       }
//
    
}

extension ViewController: UITableViewDelegate {
  
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(viewModel.users[indexPath.row])
           if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
               tableView.cellForRow(at: indexPath)?.accessoryType = .none
           } else {
               tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

           }
           tableView.deselectRow(at: indexPath, animated: true)
       }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//           if segue.identifier == "showDetailController" {
//               let cell = sender as! DetailTableCell
//               if let indexPath = tableView.indexPath(for: cell) {
//                let nameController. = segue.destination as! DetailViewController
//                tableView.deselectRow(at: indexPath, animated: true)
//               }
//           }
//       }
}



extension ViewController: ViewModelDelegate {
    
    func update() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
