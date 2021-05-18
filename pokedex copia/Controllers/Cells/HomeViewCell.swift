//
//  HomeViewCell.swift
//  pokedex
//
//  Created by Miguel Alarcon on 18/5/21.
//

import UIKit

class HomeViewCell: UITableViewCell{
    
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var viewLogo: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewLogo.borderColorBlack(value: 1)
        viewLogo.roundedView(value: 10)
        imageLogo.roundedImage(value: 10)
    }
    
    func configure(image: String?) {
        imageLogo.image = UIImage(named: image ?? "")
    }
}
