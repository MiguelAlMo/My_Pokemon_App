//
//  FuncBackgroundColor.swift
//  pokedex
//
//  Created by Miguel Alarcon on 17/5/21.
//

import UIKit

// MARK: - Devolver color en función del tipo de pokemon con alpha 0.6

func backgroundColorAlpha (forType type: String, alpha: Float) -> UIColor {
    
    switch type {
        case "fire": return .systemRed.withAlphaComponent(CGFloat(alpha))
        case "poison": return .systemGreen.withAlphaComponent(CGFloat(alpha))
        case "water": return .systemBlue.withAlphaComponent(CGFloat(alpha))
        case "electric": return .systemYellow.withAlphaComponent(CGFloat(alpha))
        case "psychic": return .systemPurple.withAlphaComponent(CGFloat(alpha))
        case "normal": return .systemOrange.withAlphaComponent(CGFloat(alpha))
        case "ground": return .systemGray.withAlphaComponent(CGFloat(alpha))
        case "flying": return .systemTeal.withAlphaComponent(CGFloat(alpha))
        case "fairy": return .systemPink.withAlphaComponent(CGFloat(alpha))
        default: return .systemIndigo.withAlphaComponent(CGFloat(alpha))
    }
}
