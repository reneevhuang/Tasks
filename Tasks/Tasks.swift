//
//  Tasks.swift
//  Tasks
//
//  Created by Renee Huang on 9/5/20.
//  Copyright © 2020 Renee Huang. All rights reserved.
//

import Foundation

class ToDoItem{
    var title: String
    var done: Bool
    
    public init(title:String)
    {
        self.title=title
        self.done=false
    }
}

extension ToDoItem
{
    public class func getMockData() -> [ToDoItem]
    {
        return[
            ToDoItem(title:"Get groceries"),
            ToDoItem(title:"read harry potter"),
            ToDoItem(title: "change lightbulb")
        ]
    }
}
