//
//  Categories.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 28/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import Foundation

class Categories {
    var title: String!
    var arrRecipes:[Recipes] = []
    var img: String!
    
    
    init(title:String, arrRecipes:[Recipes], img:String) {
        self.title = title
        self.arrRecipes = arrRecipes
        self.img = img
    }
    
}
