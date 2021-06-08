//
//  ViewExtension.swift
//  pokedex
//
//  Created by Miguel Alarcon on 17/5/21.
//
import UIKit

// MARK: - Redondear View y colocar borde negro

extension UIView {
    
    func roundedView(value: Int) {
        layer.cornerRadius = CGFloat(value)
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize.zero
        clipsToBounds = true
    }
    func borderColorBlack(value: Int) {
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = CGFloat(value)
    }
}
