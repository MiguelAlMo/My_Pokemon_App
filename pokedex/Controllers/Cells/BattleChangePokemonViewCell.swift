//
//  BattleChangePokemonViewCell.swift
//  pokedex
//
//  Created by Miguel Alarcon on 24/5/21.
//

import UIKit

class BattleChangePokemonViewCell: UICollectionViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var viewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.roundedView(value: 10)
        viewCell.borderColorBlack(value: 1)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCell.image = nil
        
    }
    func configure(image: String?, viewColor: UIColor) {
        viewCell.backgroundColor = viewColor
        imageCell.kf.setImage(with: URL(string: image ?? ""))
    }
}
