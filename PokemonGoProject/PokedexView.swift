//
//  PokedexView.swift
//  PokemonGoProject
//
//  Created by Alex Hotca on 4/26/22.
//

import UIKit

class PokedexView: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nvc = segue.destination as! InfoViewController
        
        if segue.identifier == "A1" {
            
            let Bulbasaur = Pokemon(numberID: "001", name: "Bulbasaur", category: "Seed", height: "2' \"04", weight: "15.2 lbs", description: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.", pictureName: "001", type: "Grass", type2: "Poison")
            
            nvc.pokemon = Bulbasaur
            
        } else if segue.identifier == "A2" {
            
            let Ivysaur = Pokemon(numberID: "002", name: "Ivysaur", category: "Seed", height: "3' \"03", weight: "28.7 lbs", description: "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.", pictureName: "002", type: "Grass", type2: "Poison")
            
            nvc.pokemon = Ivysaur
            
        } else if segue.identifier == "A3" {
            
            let Venusaur = Pokemon(numberID: "003", name: "Venusaur", category: "Seed", height: "6' \"07", weight: "220.5 lbs", description: "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.", pictureName: "003", type: "Grass", type2: "Poison")
            
            nvc.pokemon = Venusaur
            
        } else if segue.identifier == "A4" {
            
            let Charmander = Pokemon(numberID: "004", name: "Charmander", category: "Lizard", height: "2' \"00", weight: "18.7 lbs", description: "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.", pictureName: "004", type: "Fire", type2: "backG")
            
            nvc.pokemon = Charmander
        
        } else if segue.identifier == "A5" {
            
            let Charmeleon = Pokemon(numberID: "005", name: "Charmeleon", category: "Flame", height: "3' \"07", weight: "41.9 lbs", description: "It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.", pictureName: "005", type: "Fire", type2: "backG")
            
            nvc.pokemon = Charmeleon
            
        } else if segue.identifier == "A6" {
            
            let Charizard = Pokemon(numberID: "006", name: "Charizard", category: "Flame", height: "5' \"07", weight: "199.5 lbs", description: "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.", pictureName: "006", type: "Fire", type2: "Flying")
            
            nvc.pokemon = Charizard
            
        } else if segue.identifier == "A7" {
            
            let Squirtle = Pokemon(numberID: "007", name: "Squirtle", category: "Tiny Turtle", height: "1' \"08", weight: "19.8 lbs", description: "When it retracts its long neck into its shell, it squirts out water with vigorous force.", pictureName: "007", type: "Water", type2: "backG")
            
            nvc.pokemon = Squirtle
            
        } else if segue.identifier == "A8" {
            
            let Wartortle = Pokemon(numberID: "008", name: "Wartortle", category: "Turtle", height: "3' \"03", weight: "49.6 lbs", description: "It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.", pictureName: "008", type: "Water", type2: "backG")
            
            nvc.pokemon = Wartortle
            
        } else if segue.identifier == "A9" {
            
            let Blastoise = Pokemon(numberID: "009", name: "Blastoise", category: "Shellfish", height: "5' \"03", weight: "188.5 lbs", description: "It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.", pictureName: "009", type: "Water", type2: "backG")
            
            nvc.pokemon = Blastoise
        }
    
    }

}
