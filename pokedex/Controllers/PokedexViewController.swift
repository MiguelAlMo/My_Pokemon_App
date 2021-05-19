//
//  PokedexViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 15/5/21.
//

import UIKit
import Kingfisher

class PokedexViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
//    var all: [Pokemon] = []
//    var pokemons: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        searchBar.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? DetailViewController,
              let cell = sender as? UICollectionViewCell,
              let indexPath = collectionView.indexPath(for: cell) else {
            return
        }
        
        if(indexPath.row < defaultPokemons.count) {
            let pokemonSelected = defaultPokemons[indexPath.row]
            destination.pokemon = pokemonSelected
        }
    }
}

extension PokedexViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        defaultPokemons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3 - 12,
                      height: collectionView.frame.width / 3 - 12 )
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonViewCell", for: indexPath) as? PokemonViewCell
        if(indexPath.row < defaultPokemons.count){
            let data = defaultPokemons[indexPath.row]
            cell?.configure(name: data.name ?? "", image: data.imageURL, viewColor: backgroundColorAlpha(forType: data.type ?? ""))
        }
        return cell ?? UICollectionViewCell()
    }
}

extension PokedexViewController: UISearchBarDelegate {
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//       all = []
//       if searchText == "" {
//         all = defaultPokemons
//       }
//       else{
//         for pokemon in defaultPokemons {
//           if ((pokemon.name?.lowercased().contains(searchText.lowercased())) ?? false) {
//             all.append(pokemon)
//           }
//         }
//       }
//       self.collectionView.reloadData()
//     }
}
