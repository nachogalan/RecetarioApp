//
//  RecipesCell.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 29/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class RecipesCell: UITableViewCell {
    @IBOutlet weak var imgRecipe: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblIngredients: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
