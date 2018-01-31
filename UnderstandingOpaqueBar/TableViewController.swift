//
//  TableViewController.swift
//  UnderstandingOpaqueBar
//
//  Created by Hesse Huang on 2018/1/31.
//  Copyright © 2018年 Hesse. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let randomColors: [UIColor] = {
        (0..<30).map { _ in
            return UIColor.random
        }
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        extendedLayoutIncludesOpaqueBars = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.contentInsetAdjustmentBehavior = .never
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return randomColors.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = randomColors[indexPath.row]
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
    
}

