//
//  File.swift
//  PokemonGoProject
//
//  Created by Alex Hotca on 4/26/22.
//

import Foundation
import UIKit

class Pokemon {
    
    var numberID:String
    var name:String
    var category:String
    var height:String
    var weight:String
    var description:String
    var pictureName:UIImage
    var type:UIImage
    var type2:UIImage
    
    init(numberID:String, name:String, category:String, height:String, weight:String, description:String, pictureName:String, type:String, type2:String) {
        self.numberID = numberID
        self.name = name
        self.category = category
        self.height = height
        self.weight = weight
        self.description = description
        self.pictureName = UIImage(named: pictureName)!
        self.type = UIImage(named: type)!
        self.type2 = UIImage(named: type2)!
        
    }
    
}


