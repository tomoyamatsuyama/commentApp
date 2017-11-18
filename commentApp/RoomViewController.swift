//
//  RoomViewController.swift
//  commentApp
//
//  Created by 松山友也 on 2017/11/18.
//  Copyright © 2017年 Tomoya Matsuyama. All rights reserved.
//

import UIKit
import Foundation

class RoomViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var roomId: Int = 0
    var userLists: [String] = []
    var commentLists: [String] = []
    
    @IBOutlet weak var inputComment: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func sendButton(_ sender: Any) {
        if let comment: String = inputComment.text {
            userLists.append("自分")
            commentLists.append(comment)
        }
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! CommentTableViewCell
        cell.userLabel.text = userLists[indexPath.row]
        cell.sentenseLabel.text = commentLists[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
