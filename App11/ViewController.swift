//
//  ViewController.swift
//  App11
//
//  Created by ENRIQUE VERGARA  on 9/27/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let imagenFonto = UIImageView(image: UIImage(named : "caballo"))
    var personas = ["jose", "Enrique", "Vergara", "Ambriz", "Pedro", "Pepe"]

    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.backgroundView = imagenFonto
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for : indexPath)
        cell.textLabel?.text = personas[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Avenir", size: CGFloat(32))
        cell.textLabel?.textColor = .darkGray
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

