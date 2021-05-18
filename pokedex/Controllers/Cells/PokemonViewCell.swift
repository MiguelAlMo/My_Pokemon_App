//
//  PokemonViewCell.swift
//  pokedex
//
//  Created by Miguel Alarcon on 15/5/21.
//
import UIKit

class PokemonViewCell: UICollectionViewCell {
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var viewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.roundedView(value: 10)
        viewCell.borderColorBlack(value: 1)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        labelCell.text = nil
        imageCell.image = nil
        
    }
    func configure(name: String?, image: String?, viewColor: UIColor) {
        labelCell.text = name
        viewCell.backgroundColor = viewColor
        imageCell.kf.setImage(with: URL(string: image ?? ""))
    }
}
