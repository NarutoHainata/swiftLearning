# ios app *to do list* with swift

Following [tutorial on youtube](https://www.youtube.com/watch?v=war0gHL26ns)

1. tabbed application

2. new Cocoa Touch Class file name :ToDoManager

in ToDoManager:

```swift
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
```

3. storyboard: first view add table view, link datasource and delegate

4. FirstViewController.swift:

```swift
 // UITableView DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoMgr.toDoes.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel?.text = toDoMgr.toDoes[indexPath.row].title
        cell.detailTextLabel?.text = toDoMgr.toDoes[indexPath.row].desc
        
        return cell
    }

```

5.

