//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Cao Huân Nguyễn on 08/06/2022.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    // MARK: - Action of item bar button -
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    // END MARK
}
