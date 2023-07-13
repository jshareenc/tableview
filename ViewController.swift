//
//  ViewController.swift
//  CustomTableView
//
//  Created by user on 13/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    struct Pictures {
        let title: String
        let imageName: String
    }
    
    let data: [Pictures] = [
        Pictures(title: "Sunset", imageName: "sunset2"),
        Pictures(title: "Relaxing", imageName: "beach"),
        Pictures(title: "Hiking", imageName: "hiking"),
        Pictures(title: "Morning run", imageName: "park"),
        Pictures(title: "Sightseeing", imageName: "travelling"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let picture = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = picture.title
        cell.iconImageView.image = UIImage(named: picture.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

