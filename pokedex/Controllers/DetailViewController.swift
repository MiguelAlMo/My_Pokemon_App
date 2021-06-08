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
    @IBOutlet weak var defensePokemon: UILabel!
    
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var imageFirstEvolution: UIImageView!
    @IBOutlet weak var imageSecondEvolution: UIImageView!
    @IBOutlet weak var imageThirdvolution: UIImageView!
    @IBOutlet weak var imageStatsAttack: UIImageView!
    @IBOutlet weak var imageStatsDefense: UIImageView!
    @IBOutlet weak var imageStatsHeight: UIImageView!
    @IBOutlet weak var imageStatsWeight: UIImageView!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Mostrar primera evolución pokemon
        defaultPokemons.forEach { poke in
            if pokemon?.evolutionChain?.count ?? 0 == 1 {
                if pokemon?.evolutionChain?[0].name == poke.name {
                    imageFirstEvolution.kf.setImage(with: URL(string: poke.imageURL ?? ""))
                    
                }
            }
        }
        
        // MARK: - Mostrar primera y segunda evolución pokemon
        defaultPokemons.forEach { poke in
            if pokemon?.evolutionChain?.count ?? 0 == 2 {
                if pokemon?.evolutionChain?[0].name == poke.name {
                    imageFirstEvolution.kf.setImage(with: URL(string: poke.imageURL ?? ""))
                    
                }
                if pokemon?.evolutionChain?[1].name == poke.name {
                    imageSecondEvolution.kf.setImage(with: URL(string: poke.imageURL ?? ""))
                }
            }
        }
        
        // MARK: - Mostrar primera, segunda y tercera evolución pokemon
        defaultPokemons.forEach { poke in
            if pokemon?.evolutionChain?.count ?? 0 == 3{
                if pokemon?.evolutionChain?[0].name == poke.name {
                    imageFirstEvolution.kf.setImage(with: URL(string: poke.imageURL ?? ""))
                    
                }
                if pokemon?.evolutionChain?[1].name == poke.name {
                    imageSecondEvolution.kf.setImage(with: URL(string: poke.imageURL ?? ""))
                }
                if pokemon?.evolutionChain?[2].name == poke.name {
                    imageThirdvolution.kf.setImage(with: URL(string: poke.imageURL ?? ""))
                }
            }
        }
        
        descriptionLabel.text = pokemon?.pokemonDescription
        namePokemon.text = "\(String(describing: pokemon?.name ?? ""))"
        weightPokemon.text = "\(pokemon?.weight ?? 0)"
        heightPokemon.text = "\(pokemon?.height ?? 0)"
        attackPokemon.text = "\(pokemon?.attack ?? 0)"
        defensePokemon.text = "\(pokemon?.defense ?? 0)"
        imageStatsAttack.image = UIImage(named: pokemon?.iconAttack ?? "")
        imageStatsDefense.image = UIImage(named: pokemon?.iconDefense ?? "")
        imageStatsHeight.image = UIImage(named: pokemon?.iconHeight ?? "")
        imageStatsWeight.image = UIImage(named: pokemon?.iconWeight ?? "")
        
        descriptionView.borderColorBlack(value: 1)
        descriptionView.roundedView(value: 20)
        backgroundView.backgroundColor = backgroundColorAlpha(forType: pokemon?.type ?? "", alpha: 0.9)
        imagePokemon.kf.setImage(with: URL(string: pokemon?.imageURL ?? ""))
    }
}
