//
//  InfoViewController.swift
//  PokemonGoProject
//
//  Created by Sam Yeh on 4/26/22.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var idNumber: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var typeImageOne: UIImageView!
    @IBOutlet weak var typeImageTwo: UIImageView!
    @IBOutlet weak var CategoryLabel: UILabel!
    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        idNumber.text = pokemon.numberID
        nameLabel.text = pokemon.name
        pokeImage.image = pokemon.pictureName
        typeImageOne.image = pokemon.type
        typeImageTwo.image = pokemon.type2
        CategoryLabel.text = pokemon.category
        HeightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        descriptionLabel.text = pokemon.description
        
    }
}
