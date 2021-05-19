//
//  BattleViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 18/5/21.
//

import UIKit
import Kingfisher

class BattleViewController: UIViewController {
    
    //MARK: - Views
    @IBOutlet weak var viewCommands: UIView!
    @IBOutlet weak var viewActionsBattle: UIView!
    @IBOutlet weak var myPokemonView: UIView!
    @IBOutlet weak var rivalPokemonView: UIView!
    @IBOutlet weak var viewStatMyPokemon: UIView!
    @IBOutlet weak var viewLiveMyPokemon: UIView!
    @IBOutlet weak var viewStatRivalPokemon: UIView!
    @IBOutlet weak var viewLiveRivalPokemon: UIView!
    
    //MARK: - Images
    @IBOutlet weak var rivalPokemonImage: UIImageView!
    @IBOutlet weak var myPokemonImage: UIImageView!
    
    //MARK: - Labels
    @IBOutlet weak var nameRivalPokemon: UILabel!
    @IBOutlet weak var powerRivalPokemon: UILabel!
    @IBOutlet weak var nameMyPokemon: UILabel!
    @IBOutlet weak var powerMyPokemon: UILabel!
    @IBOutlet weak var whatShouldDo: UILabel!
    
    //MARK: - Buttons
    @IBOutlet weak var changeMyButton: UIButton!
    @IBOutlet weak var changeRivalButton: UIButton!
    @IBOutlet weak var fightButton: UIButton!
    @IBOutlet weak var runButton: UIButton!
    
    //MARK: - variables
    var myPokemon = defaultPokemons.randomElement()
    var rivalPokemon = defaultPokemons.randomElement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeMyButton.titleLabel?.numberOfLines = 2
        changeRivalButton.titleLabel?.numberOfLines = 2
        viewCommands.roundedView(value: 15)
        viewActionsBattle.roundedView(value: 15)
        viewCommands.borderColorBlack(value: 2)
        viewActionsBattle.borderColorBlack(value: 1)
        
        viewStatMyPokemon.roundedView(value: 10)
        viewStatRivalPokemon.roundedView(value: 10)
        viewStatMyPokemon.borderColorBlack(value: 2)
        viewStatRivalPokemon.borderColorBlack(value: 2)
        
        viewLiveMyPokemon.roundedView(value: 10)
        viewLiveRivalPokemon.roundedView(value: 10)
        viewLiveMyPokemon.borderColorBlack(value: 1)
        viewLiveRivalPokemon.borderColorBlack(value: 1)
        
        myPokemonView.roundedView(value: 30)
        rivalPokemonView.roundedView(value: 30)
        
        myPokemonImage.kf.setImage(with: URL(string: myPokemon?.imageURL ?? ""))
        rivalPokemonImage.kf.setImage(with: URL(string: rivalPokemon?.imageURL ?? ""))
        
        nameRivalPokemon.text = rivalPokemon?.name
        nameMyPokemon.text = myPokemon?.name
        powerRivalPokemon.text = "Pw:\(rivalPokemon?.attack ?? 0)"
        powerMyPokemon.text = "Pw:\(myPokemon?.attack ?? 0)"
        whatShouldDo.text = "What should \(myPokemon?.name ?? "") do?"
    }
    
    //MARK: - Actions
    
    @IBAction func fightAction(_ sender: Any) {
        if(rivalPokemon?.attack ?? 0 < myPokemon?.attack ?? 0) {
            rivalPokemonImage.image = UIImage(named: "rip")
            viewLiveRivalPokemon.backgroundColor = .red
            
        } else if (rivalPokemon?.attack ?? 0 > myPokemon?.attack ?? 0){
            myPokemonImage.image = UIImage(named: "rip")
            viewLiveMyPokemon.backgroundColor = .red
        } else {
            rivalPokemonImage.image = UIImage(named: "rip")
            viewLiveRivalPokemon.backgroundColor = .red
            myPokemonImage.image = UIImage(named: "rip")
            viewLiveMyPokemon.backgroundColor = .red
        }
        
    }
    @IBAction func changeMyPokemon(_ sender: Any) {
        myPokemon = defaultPokemons.randomElement()
        myPokemonImage.kf.setImage(with: URL(string: myPokemon?.imageURL ?? ""))
        viewLiveMyPokemon.backgroundColor = .green
        nameMyPokemon.text = myPokemon?.name
        powerMyPokemon.text = "Pw:\(myPokemon?.attack ?? 0)"
        whatShouldDo.text = "What should \(myPokemon?.name ?? "") do?"
    }
    @IBAction func changeRivalPokemon(_ sender: Any) {
        rivalPokemon = defaultPokemons.randomElement()
        rivalPokemonImage.kf.setImage(with: URL(string: rivalPokemon?.imageURL ?? ""))
        viewLiveRivalPokemon.backgroundColor = .green
        nameRivalPokemon.text = rivalPokemon?.name
        powerRivalPokemon.text = "Pw:\(rivalPokemon?.attack ?? 0)"
    }
    
}
