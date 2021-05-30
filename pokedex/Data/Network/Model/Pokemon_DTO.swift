
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
    var totalPower: Int? {
        ((attack ?? 0) + (defense ?? 0))
    }
    var iconHeight: String {
            switch height ?? 0 {
                case 0...3 : return "stats_1_height"
                case 4...8 :return "stats_2_height"
                case 9...13 :return "stats_3_height"
                case 14...18 :return "stats_4_height"
                case 19...1000  :return "stats_5_height"
                default: return "stats_5_height"
            }
        }
    var iconWeight: String {
            switch weight ?? 0 {
                case 0...49 : return "stats_1_weight"
                case 50...99 :return "stats_2_weight"
                case 100...224 :return "stats_3_weight"
                case 225...399 :return "stats_4_weight"
                case 400...10000  :return "stats_5_weight"
                default: return "stats_1_weight"
            }
        }
    var iconAttack: String {
            switch attack ?? 0 {
                case 0...19 : return "stats_1_attack"
                case 20...39 :return "stats_2_attack"
                case 40...64 :return "stats_3_attack"
                case 65...89 :return "stats_4_attack"
                case 90...1000  :return "stats_5_attack"
                default: return "stats_1_weight"
            }
        }
    var iconDefense: String {
            switch attack ?? 0 {
                case 0...24 : return "stats_1_defense"
                case 25...49 :return "stats_2_defense"
                case 50...74 :return "stats_3_defense"
                case 75...99 :return "stats_4_defense"
                case 100...1000  :return "stats_5_defense"
                default: return "stats_1_defense"
            }
        }

    enum CodingKeys: String, CodingKey {
        case attack, defense
        case pokemonDescription = "description"
        case evolutionChain, height, id
        case imageURL = "imageUrl"
        case name, type, weight
        case pokemonDefense = "defense:"
    }

    init(attack: Int?, defense: Int?, pokemonDescription: String?, evolutionChain: [EvolutionChain]?, height: Int?, id: Int?, imageURL: String?, name: String?, type: String?, weight: Int?, pokemonDefense: Int?, totalPower: Int) {
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

