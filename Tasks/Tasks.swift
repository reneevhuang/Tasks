//
//  Tasks.swift
//  Tasks
//
//  Created by Renee Huang on 9/5/20.
//  Copyright © 2020 Renee Huang. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding
{
    var title: String
    var done: Bool
    
    public init(title:String)
    {
        self.title=title
        self.done=false
    }
    
    required init?(coder aDecoder: NSCoder)
    {
    // Try to unserialize the "title" variable
        if let title = aDecoder.decodeObject(value(forKey: "title") as? String)
        {
            self.title = title
        }
        else
        {
            // There were no objects encoded with the key "title",
            // so that's an error.
            return nil
        }
        
        // Check if the key "done" exists, since decodeBool() always succeeds
        if aDecoder.containsValue(forKey: "done")
        {
            self.done = aDecoder.decodeBool(forKey: "done")
        }
        else
        {
            return nil
        }
    }
        
    func encode(with aCoder: NSCoder)
    {
        // Store the objects into the coder object
        aCoder.encode(self.title, forKey: "title")
        aCoder.encode(self.done, forKey: "done")
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
