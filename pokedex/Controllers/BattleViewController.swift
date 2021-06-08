//
//  BattleViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 18/5/21.
//

import UIKit
import Kingfisher

class BattleViewController: UIViewController {
    
    //MARK: - CollectionView
    @IBOutlet weak var collectionChangePokemon: UICollectionView!
    
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
    @IBOutlet weak var selectPokemonLabel: UILabel!
    
    //MARK: - variables
    var myPokemon = defaultPokemons.randomElement()
    var rivalPokemon = defaultPokemons.randomElement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionChangePokemon.delegate = self
        collectionChangePokemon.dataSource = self
        collectionChangePokemon.isHidden = true
        collectionChangePokemon.layer.borderWidth = 2
        collectionChangePokemon.layer.borderColor = UIColor.gray.cgColor
        collectionChangePokemon.roundedView(value: 20)
        
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
        selectPokemonLabel.isHidden = true
    }
    
    //MARK: - Actions
    
    @IBAction func fightAction(_ sender: Any) {
        if(rivalPokemon?.attack ?? 0 < myPokemon?.attack ?? 0) {
            rivalPokemonImage.image = UIImage(named: "rip")
            viewLiveRivalPokemon.backgroundColor = .red
            showAlert(message: "Enemy \(rivalPokemon?.name ?? "") fainted!\nYou win!")
            
        } else if (rivalPokemon?.attack ?? 0 > myPokemon?.attack ?? 0){
            myPokemonImage.image = UIImage(named: "rip")
            viewLiveMyPokemon.backgroundColor = .red
            showAlert(message: "\(myPokemon?.name ?? "") fainted!\nYou Lose!")
        } else {
            rivalPokemonImage.image = UIImage(named: "rip")
            viewLiveRivalPokemon.backgroundColor = .red
            myPokemonImage.image = UIImage(named: "rip")
            viewLiveMyPokemon.backgroundColor = .red
            showAlert(message: "\(myPokemon?.name ?? "") and \(rivalPokemon?.name ?? "") have fainted!\nBattle tied!")
        }
        
    }
    @IBAction func changeMyPokemon(_ sender: Any) {
        collectionChangePokemon.isHidden = false
        viewCommands.isHidden = true
        selectPokemonLabel.isHidden = false
    }
    @IBAction func changeRivalPokemon(_ sender: Any) {
        rivalPokemon = defaultPokemons.randomElement()
        rivalPokemonImage.kf.setImage(with: URL(string: rivalPokemon?.imageURL ?? ""))
        viewLiveRivalPokemon.backgroundColor = .green
        nameRivalPokemon.text = rivalPokemon?.name
        powerRivalPokemon.text = "Pw:\(rivalPokemon?.attack ?? 0)"
    }
    
    // MARK: - Alert resultado de la batalla
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Battle results", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

extension BattleViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    // MARK: - Numero de items a mostrar
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        defaultPokemons.count
    }
    
    // MARK: - Márgenes del collectionView
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    // MARK: - Items a mostrar por fila - margen entre los items de cada celda
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 6 - 2,
                      height: collectionView.frame.width / 6 - 2 )
    }
    
    // MARK: - Configurar celdas con los datos de cada pokémon
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BattleChangePokemonViewCell", for: indexPath) as? BattleChangePokemonViewCell
            if(indexPath.row < defaultPokemons.count){
                let data = defaultPokemons[indexPath.row]
                cell?.configure(image: data.imageURL, viewColor: backgroundColorAlpha(forType: data.type ?? "",alpha: 0.6))
            }
            return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.row < defaultPokemons.count) {
            
            myPokemon = defaultPokemons[indexPath.row]
            myPokemonImage.kf.setImage(with: URL(string: myPokemon?.imageURL ?? ""))
            viewLiveMyPokemon.backgroundColor = .green
            nameMyPokemon.text = myPokemon?.name
            powerMyPokemon.text = "Pw:\(myPokemon?.attack ?? 0)"
            whatShouldDo.text = "What should \(myPokemon?.name ?? "") do?"
            viewCommands.isHidden = false
            collectionChangePokemon.isHidden = true
            selectPokemonLabel.isHidden = true
        }
    }
}
