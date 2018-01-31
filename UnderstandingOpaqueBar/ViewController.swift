//
//  ViewController.swift
//  UnderstandingOpaqueBar
//
//  Created by Hesse Huang on 2018/1/31.
//  Copyright © 2018年 Hesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Home View"
        view.backgroundColor = .white
        extendedLayoutIncludesOpaqueBars = true
        
        let btn = UIButton(type: .system)
        btn.setTitle("Push", for: .normal)
        btn.sizeToFit()
        btn.center = view.center
        btn.addTarget(self, action: #selector(pushSomething(_:)), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @objc func pushSomething(_ sender: Any) {
        let tvc = TableViewController()
        tvc.title = "Detail View"
        navigationController?.pushViewController(tvc, animated: true)
    }
    
    
}

extension UIColor {
    
    static var random: UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(256)) / 255,
                       green: CGFloat(arc4random_uniform(256)) / 255,
                       blue: CGFloat(arc4random_uniform(256)) / 255,
                       alpha: 1.0)
    }
}
