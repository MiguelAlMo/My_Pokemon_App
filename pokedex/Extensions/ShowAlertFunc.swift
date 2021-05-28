//
//  ShowAlertFunc.swift
//  pokedex
//
//  Created by Miguel Alarcon on 28/5/21.
//

import UIKit

func showAlert(message: String, present: UIPresentationController) {
    let alert = UIAlertController(title: "My Team", message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    present(alert)
}
