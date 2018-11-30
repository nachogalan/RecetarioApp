//
//  Recipes.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 29/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import Foundation

class Recipes {
    var title: String!
    var img: String!
    var description: String!
    var difficulty: String!
    var ingredients: String!
    var preparation: String!
    var time: String!

    var lat: Double!
    var lon: Double!
    
    
    
    init(title: String!, img: String!, difficulty:String!, description: String!, ingredients: String!, preparation: String!, time: String!, lat: Double!, lon:Double!) {
        self.title = title
        self.img = img
        self.description = description
        self.ingredients = ingredients
        self.preparation = preparation
        self.difficulty = difficulty
        self.time = time
        self.lat = lat
        self.lon = lon
    }
}
