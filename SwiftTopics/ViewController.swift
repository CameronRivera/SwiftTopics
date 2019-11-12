//
//  ViewController.swift
//  SwiftTopics
//
//  Created by Cameron Rivera on 11/12/19.
//  Copyright © 2019 Cameron Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var swiftTopics = SwiftTopics.swiftTopics
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let xCell = tableView.dequeueReusableCell(withIdentifier: "swiftTopicCell", for: indexPath)
        xCell.textLabel?.text = swiftTopics[indexPath.row]
        return xCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count
    }
}
