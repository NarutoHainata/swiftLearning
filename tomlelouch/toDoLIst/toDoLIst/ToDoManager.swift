//
//  ToDoManager.swift
//  toDoLIst
//
//  Created by tomlelouch on 6/5/16.
//  Copyright © 2016 tomlelouch. All rights reserved.
//

import UIKit

struct toDo {
    var title = "no-title"
    var desc  = "un-description"
}

var toDoMgr: ToDoManager = ToDoManager()

class ToDoManager: NSObject {
    // var tasks = task[]() in tutorial
    var toDoes = [toDo]()
    func addToDo(title: String, desc: String) {
        toDoes.append(toDo(title: title, desc: desc))
    }
}
