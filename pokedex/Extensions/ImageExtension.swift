//
//  ImageExtension.swift
//  pokedex
//
//  Created by Miguel Alarcon on 18/5/21.
//

import UIKit

// MARK: - Redondear imagen

extension UIImageView {
    func roundedImage(value: Int) {
        layer.cornerRadius = CGFloat(value)
    }
}
