//
//  SampleData.swift
//  pokedex
//
//  Created by Miguel Alarcon on 17/5/21.
//

import Foundation


// ******* DEFAULT DATA *******
var defaultPokemons: [Pokemon] = []

func loadDefaultData() {
    loadPokemons()
}


// ******* LOAD JSON DATA *******
private func loadPokemons() {
    guard let pathURL = Bundle.main.url(forResource: "pokemon_data", withExtension: "json") else {
        print("Can not find 'pokemon_data' resource 1")
        return
    }
    
    do {
        let data = try Data(contentsOf: pathURL)
        defaultPokemons = try JSONDecoder().decode([Pokemon].self, from: data)
    } catch {
        print("Can not find 'pokemon_data' resource 2")
    }
}

