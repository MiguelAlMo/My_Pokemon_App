//
//  HomeViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 18/5/21.
//

import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        270
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeViewCell",
                                                 for: indexPath) as? HomeViewCell
        switch indexPath.row {
            case 0:
                cell?.configure(image: "pokedex_logo")
            case 1:
                cell?.configure(image: "pokemon_battle")
            default:
                break
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
            case 0: performSegue(withIdentifier: "POKEDEX_SEGUE", sender: self)
            case 1: performSegue(withIdentifier: "BATTLE_SEGUE", sender: self)
            default:
                break
        }
    }
}

