//
//  PokeCell.swift
//  Pokedex3
//
//  Created by Julian Flint Pearce on 22/09/2016.
//  Copyright © 2016 Julian Flint Pearce. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
  
  @IBOutlet weak var thumbImage: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  
  var pokemon: Pokemon!
  
  func configureCell(withPokemon pokemon: Pokemon) {
    self.pokemon = pokemon
    nameLabel.text = pokemon.name.capitalized
    thumbImage.image = UIImage(named: String(pokemon.pokedexID))
    
  }
  
  
}
