//
//  FriendsViewController.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let allFriends = Friends().allFriends

    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    //MARK: TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FriendsTableViewCell
        let friend = allFriends[indexPath.row]
        
        cell.selectionStyle = .none
        
        cell.friendImage.image = friend.image
        cell.friendName.text = friend.title
        cell.friendPoints.text = "\(friend.points)"
        
        return cell
    }

}
