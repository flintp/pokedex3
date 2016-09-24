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
  @IBOutlet weak var mainImage: UIImageView!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  @IBOutlet weak var typeLabel: UILabel!
  
  @IBOutlet weak var defenseLabel: UILabel!
  
  @IBOutlet weak var heightLabel: UILabel!
  
  @IBOutlet weak var pokedexLabel: UILabel!
  
  @IBOutlet weak var attackLabel: UILabel!
  
  @IBOutlet weak var currentEvoImage: UIImageView!
  
  @IBOutlet weak var nextEvoImage: UIImageView!
  
  @IBOutlet weak var evoLabel: UILabel!
  
  
  var pokemon: Pokemon!
  
  @IBAction func backButtonPressed(_ sender: UIButton) {
    
    dismiss(animated: true, completion: nil)
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    nameLabel.text = pokemon.name
    
  }
  
  
  
}
