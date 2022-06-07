//
//  ViewController.swift
//  Checklists
//
//  Created by Cao Huân Nguyễn on 06/06/2022.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
}

// MARK: - Customize tableView -
extension ChecklistViewController {
    
    // TODO: - Set row and number index from first row of tableView -
    // Both functions below are called method signature of tableView.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem",            // ChecklistItem is the item of each row.
            for: indexPath
        )
        
        // Adding extra
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row % 5 == 1 {
            label.text = "Brush my teeth"
        } else if indexPath.row % 5 == 2 {
            label.text = "Learn IOS development"
        } else if indexPath.row % 5 == 3 {
            label.text = "Soccer pratice"
        } else if indexPath.row % 5 == 4 {
            label.text = "Eat rice cream"
        }
        // End
        
        return cell
    }
    // END TODO
    
    // TODO: - didSelectAtRow - Tick characters when table are be clicked
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType == .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    // END TODO
}
// END MARK
