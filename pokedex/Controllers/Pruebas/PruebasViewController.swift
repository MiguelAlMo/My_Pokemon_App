//
//  PruebasViewController.swift
//  pokedex
//
//  Created by Miguel Alarcon on 28/5/21.
//
import UIKit
import Kingfisher

class PruebasViewController: UIViewController {
    @IBOutlet weak var imagepoke: UIImageView!
    @IBOutlet weak var viewPoke: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagepoke.kf.setImage(with: URL(string: defaultPokemons.first?.imageURL ?? ""))
        viewPoke.layer.borderWidth = 1
        viewPoke.layer.borderColor = UIColor.gray.cgColor
        viewPoke.roundedView(value: 20)
    }
}
