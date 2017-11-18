//
//  Purse.swift
//  commentApp
//
//  Created by 松山友也 on 2017/11/18.
//  Copyright © 2017年 Tomoya Matsuyama. All rights reserved.
//

import Foundation

struct RoomInfo: Codable {
    
    struct Comment: Codable {
        var id: Int
        var commentroom_id: Int
        var user_id: Int
        var comment: String
        var created_at: String
        var updated_at: String
    }
    
    var id: Int
    var book_id: String
    var created_at: String
    var updated_at: String
    var comments: [Comment]
}

struct CommentData {
    var returnUserLists: [String] = []
    var returnCommentLists: [String] = []
}

class Purse {
    
    static func getPurse(id: Int) -> CommentData {
        var userLists: [String] = []
        var commentLists: [String] = []
        var commentData: CommentData = CommentData()
        
        guard let path = Bundle.main.path(forResource: "commentroom_show", ofType: "json") else { return commentData }
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let roomInfo = try! JSONDecoder().decode(RoomInfo.self, from: data)
        
        if roomInfo.id == id {
            
            roomInfo.comments.forEach { comment in
                userLists.append("userId" + String(comment.id))
                commentLists.append(comment.comment)
            }
            
            commentData.returnUserLists = userLists
            commentData.returnCommentLists = commentLists
            return commentData
            
        } else { return commentData }
    }
}
