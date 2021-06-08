//
//  PruebasViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 28/5/21.
//
import UIKit
import Kingfisher

// MARK: - Pruebas en ViewController a parte

class PruebasViewController: UIViewController {
    
    @IBOutlet weak var imagepoke: UIImageView!
    @IBOutlet weak var writeAnswer: UIButton!
    
    @IBAction func writeAnswerAction(_ sender: Any) {
        
    }
    
    private var pokemon = defaultPokemons.randomElement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagepoke.kf.setImage(with: URL(string: pokemon?.imageURL ?? ""))
    }
}
