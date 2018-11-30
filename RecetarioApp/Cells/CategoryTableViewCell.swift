//
//  CategoryTableViewCell.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 28/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblNumRecepies: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblTitle.layer.cornerRadius = 8
        lblTitle.layer.borderWidth = 1
        lblTitle.layer.masksToBounds = true
        lblNumRecepies.layer.cornerRadius = 8
        lblNumRecepies.layer.borderWidth = 1
        lblNumRecepies.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
