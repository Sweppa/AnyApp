//
//  AATableView.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit

class AATableView: UIViewController {
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "TableView"
        
        configureTableView()
        setTableViewDelegates()
    }
    
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        
        tableView.rowHeight  =  100
        tableView.pin(to: view)
        
        // Done button
//        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismssVC))
//        navigationItem.rightBarButtonItem = doneButton

    }


//    @objc func dismssVC() {
//        dismiss(animated: true)
//    }
    // Done button
    
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension AATableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
}
