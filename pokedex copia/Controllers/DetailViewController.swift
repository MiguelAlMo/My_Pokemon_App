//
//  DetailViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 17/5/21.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var descriptionView: UIView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var weightPokemon: UILabel!
    @IBOutlet weak var heightPokemon: UILabel!
    @IBOutlet weak var attackPokemon: UILabel!
    @IBOutlet weak var typePokemon: UILabel!
    @IBOutlet weak var defensePokemon: UILabel!
    
    @IBOutlet weak var imagePokemon: UIImageView!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionView.borderColorBlack(value: 1)
        descriptionView.roundedView(value: 10)
        backgroundView.backgroundColor = backgroundColor(forType: pokemon?.type ?? "")
        imagePokemon.kf.setImage(with: URL(string: pokemon?.imageURL ?? ""))
        
        descriptionLabel.text = pokemon?.pokemonDescription
        namePokemon.text = "Name: \(String(describing: pokemon?.name ?? ""))"
        typePokemon.text = "Type: \(String(describing: pokemon?.type ?? ""))"
        weightPokemon.text = "Weight: \(pokemon?.weight ?? 0) Kg"
        heightPokemon.text = "Height: \(pokemon?.height ?? 0)0 cm"
        attackPokemon.text = "Attack: \(pokemon?.attack ?? 0)"
        defensePokemon.text = "Defense: \(pokemon?.defense ?? 0)"
    }
}
