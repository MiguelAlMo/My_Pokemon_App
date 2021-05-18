//
//  FuncBackgroundColor.swift
//  pokedex
//
//  Created by Miguel Alarcon on 17/5/21.
//

import UIKit

func backgroundColorAlpha (forType type: String) -> UIColor {
    switch type {
        case "fire": return .systemRed.withAlphaComponent(0.5)
        case "poison": return .systemGreen.withAlphaComponent(0.5)
        case "water": return .systemBlue.withAlphaComponent(0.5)
        case "electric": return .systemYellow.withAlphaComponent(0.5)
        case "psychic": return .systemPurple.withAlphaComponent(0.5)
        case "normal": return .systemOrange.withAlphaComponent(0.5)
        case "ground": return .systemGray.withAlphaComponent(0.5)
        case "flying": return .systemTeal.withAlphaComponent(0.5)
        case "fairy": return .systemPink.withAlphaComponent(0.5)
        default: return .systemIndigo.withAlphaComponent(0.5)
    }
}

func backgroundColor (forType type: String) -> UIColor {
    switch type {
        case "fire": return .systemRed.withAlphaComponent(0.9)
        case "poison": return .systemGreen.withAlphaComponent(0.9)
        case "water": return .systemBlue.withAlphaComponent(0.9)
        case "electric": return .systemYellow.withAlphaComponent(0.9)
        case "psychic": return .systemPurple.withAlphaComponent(0.9)
        case "normal": return .systemOrange.withAlphaComponent(0.9)
        case "ground": return .systemGray.withAlphaComponent(0.9)
        case "flying": return .systemTeal.withAlphaComponent(0.9)
        case "fairy": return .systemPink.withAlphaComponent(0.9)
        default: return .systemIndigo.withAlphaComponent(0.9)
    }
}
