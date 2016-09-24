//
//  PokemonDetailVC.swift
//  Pokedex3
//
//  Created by Julian Flint Pearce on 24/09/2016.
//  Copyright © 2016 Julian Flint Pearce. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  
  var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
      
      nameLabel.text = pokemon.name
        
    }

  

}
