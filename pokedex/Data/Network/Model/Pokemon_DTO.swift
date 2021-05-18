// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pokemons = try? newJSONDecoder().decode(Pokemons.self, from: jsonData)

import Foundation

// MARK: - Pokemon
class Pokemon: Codable {
    let attack, defense: Int?
    let pokemonDescription: String?
    let evolutionChain: [EvolutionChain]?
    let height, id: Int?
    let imageURL: String?
    let name, type: String?
    let weight, pokemonDefense: Int?

    enum CodingKeys: String, CodingKey {
        case attack, defense
        case pokemonDescription = "description"
        case evolutionChain, height, id
        case imageURL = "imageUrl"
        case name, type, weight
        case pokemonDefense = "defense:"
    }

    init(attack: Int?, defense: Int?, pokemonDescription: String?, evolutionChain: [EvolutionChain]?, height: Int?, id: Int?, imageURL: String?, name: String?, type: String?, weight: Int?, pokemonDefense: Int?) {
        self.attack = attack
        self.defense = defense
        self.pokemonDescription = pokemonDescription
        self.evolutionChain = evolutionChain
        self.height = height
        self.id = id
        self.imageURL = imageURL
        self.name = name
        self.type = type
        self.weight = weight
        self.pokemonDefense = pokemonDefense
    }
}

// MARK: - EvolutionChain
class EvolutionChain: Codable {
    let id, name: String?

    init(id: String?, name: String?) {
        self.id = id
        self.name = name
    }
}

typealias Pokemons = [Pokemon?]

