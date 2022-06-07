//
//  ViewController.swift
//  Checklists
//
//  Created by Cao Huân Nguyễn on 06/06/2022.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
//    // Why dont add all these in an array?
//    var row0item = CheckListItem()
//    var row1item = CheckListItem()
//    var row2item = CheckListItem()
//    var row3item = CheckListItem()
//    var row4item = CheckListItem()
//
//    let row0text = "Walk the dog"
//    let row1text = "Brush teeth"
//    let row2text = "Learn IOS development"
//    let row3text = "Soccer pratice"
//    let row4text = "Eat ice cream"
//
//    var row0checked = false
//    var row1checked = true
//    var row2checked = true
//    var row3checked = false
//    var row4checked = true
    
    var items = [CheckListItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        row0item.text = "Walk the dog"
//
//        row1item.text = "Brush my teeth"
//        row1item.checked = true
//
//        row2item.text = "Learn IOS development"
//        row2item.checked = true
//
//        row3item.text = "Soccer practice"
//
//        row4item.text = "Eat ice cream"
//        row4item.checked = true
        
        let item1 = CheckListItem()
        item1.text = "Walk the dog"
        
        let item2 = CheckListItem()
        item2.text = "Brush my teeth"
        item2.checked = true
        
        let item3 = CheckListItem()
        item3.text = "Learn IOS development"
        item3.checked = true
        
        let item4 = CheckListItem()
        item4.text = "Soccer practice"
        
        let item5 = CheckListItem()
        item5.text = "Eat ice cream"
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item4)
        items.append(item5)
    }
}

// MARK: - Customize tableView -
extension ChecklistViewController {
    
    // TODO: - Set row and number index from first row of tableView -
    // Both functions below are called method signature of tableView.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem",            // ChecklistItem is the item of each row.
            for: indexPath
        )
        
        let item = items[indexPath.row]
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        label.text = item.text
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        
        return cell
    }
    // END TODO
    
    // TODO: - didSelectAtRow - Tick characters when table are be clicked
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {

            let item = items[indexPath.row]
            item.checked.toggle()
            
            configureCheckmark(for: cell, with: item)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(
        for cell: UITableViewCell,
        with item: CheckListItem
    ) {
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
    func configureText(
        for cell: UITableViewCell,
        with item: CheckListItem
    ) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    // END TODO
}
// END MARK
