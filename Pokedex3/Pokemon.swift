//
//  Pokemon.swift
//  Pokedex3
//
//  Created by Julian Flint Pearce on 22/09/2016.
//  Copyright © 2016 Julian Flint Pearce. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
  
  private var _name: String!
  private var _pokedexID: Int!
  private var _description: String!
  private var _type: String!
  private var _defense: String!
  private var _height: String!
  private var _weight: String!
  private var _attack: String!
  private var _nextEvolutionTxt: String!
  
  private var _pokemonURL: String!
  
  var name: String {
    
    return _name
  }
  
  var pokedexID: Int! {
    
    return _pokedexID
  }
  
  var description: String {
    
    if  _description == nil {
      _description = ""
    }
    
    return _description
  }
  
  var type: String {
    
    if _type == nil {
      _type = ""
    }
    
    return _type
  }
  
  var defense: String {
    
    if _defense == nil {
      _defense = ""
    }
    
    return _defense
  }
  
  var height: String {
    
    if _height == nil {
      _height = ""
    }
    
    return _height
  }
  
  var weight: String {
    
    if _weight == nil {
      _weight = ""
    }
    
    return _weight
  }
  
  var attack: String {
    
    if _attack == nil {
      _attack = ""
    }
    
    return _attack
  }
  
  var nextEvolutionTxt: String {
    
    if _nextEvolutionTxt == nil {
      _nextEvolutionTxt = ""
    }
    
    return _nextEvolutionTxt
  }
  
  init(name: String, pokedexID: Int) {
    self._name = name
    self._pokedexID = pokedexID
    
    self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(_pokedexID!)/"
    
  }
  
  func downloadPokemonDetails(completed: @escaping DownloadComplete) {
    
    Alamofire.request(_pokemonURL).responseJSON { (response) in
    
      print(response.result.value)
      
      if let dict = response.result.value as? Dictionary<String, AnyObject> {
        
        if let weight = dict["weight"] as? String {
          self._weight = weight
        }
        
        if let height = dict["height"] as? String {
          self._height = height
        }
        
        if let attack = dict["attack"] as? Int {
          self._attack = String(attack)
        }
        
        if let defense = dict["defense"] as? Int {
          self._defense = String(defense)
        }
        
        
        if let types = dict["types"] as? Array<Dictionary<String, String>> , types.count > 0 {
          
          if let name = types[0]["name"] {
            self._type = name.capitalized
          }
          
          if types.count > 1 {
            
            for type in 1..<types.count {
              
              if let name = types[type]["name"] {
                self._type = self._type + "/\(name.capitalized)"
              }
            }
          }
          
          
        } else {
          
          self._type = ""
        }
        
        
        print(self._weight, self._height, self._attack, self._defense)
        
      }
      
      completed()
      }
  
    
  }
  
}
