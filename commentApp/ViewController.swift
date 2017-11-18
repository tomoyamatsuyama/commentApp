//
//  ViewController.swift
//  commentApp
//
//  Created by 松山友也 on 2017/11/18.
//  Copyright © 2017年 Tomoya Matsuyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputText: UITextField!
    @IBAction func GoToRoom(_ sender: Any) {
        var roomId: Int = 0
        roomId = Int(inputText.text!)!
        let commentData = Purse.getPurse(id: roomId)
        self.performSegue(withIdentifier: "GoToRoom", sender: commentData)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let roomViewController = segue.destination as! RoomViewController
        let commentData: CommentData = sender as! CommentData
        roomViewController.userLists = commentData.returnUserLists
        roomViewController.commentLists = commentData.returnCommentLists
    }

}

