//
//  MyTableViewController.swift
//  ScreenerDemo
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import UIKit
import Presentables
import SnapKit
import Screener


open class MyTableViewController: UIViewController, PresentableTableViewManageable {
    
    public var tableView = UITableView()
    
    public let presentableManager = PresentableTableViewDataManager()
    
    public var data: PresentableSections {
        get { return presentableManager.data }
        set { presentableManager.data = newValue }
    }
    
    // MARK: View lifecycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        let screen = UIBarButtonItem(title: "Screen", style: .plain, target: self, action: #selector(screenIt))
        navigationItem.rightBarButtonItem = screen
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let v = HeaderView()
        v.frame = CGRect(x: 0, y: 0, width: 320, height: 80)
        tableView.tableHeaderView = v
        
        bind()
        
        let section = PresentableSection()
        section.append(Presentable<BasicTableViewCell>.create({ cell in
            cell.textLabel?.text = ":)"
        }))
        data.append(section)
    }
    
    // MARK: Actions
    
    @objc func screenIt() {
        Screen.snapshot(rootView: (UIApplication.shared.delegate! as! AppDelegate).window!)
    }
    
}
