//
//  SingularRecipeViewController.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 29/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit
import SDWebImage

class SingularRecipeViewController: UIViewController {
    

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionR: UILabel!
    @IBOutlet weak var ingredientsR: UILabel!
    @IBOutlet weak var difficultyR: UILabel!
    @IBOutlet weak var timeR: UILabel!
    @IBOutlet weak var elaborationR: UILabel!
    
    @IBOutlet weak var btnMap: UIButton!
    
    var name1: String!
    var imageR: String!
    var descriptionRR: String!
    var ingredientsRR: String!
    var difficultyRR: String!
    var timeRR: String!
    var elaborationRR: String!
    var lat: Double!
    var lon: Double!
    
    convenience init(nameR: String, imageR:String, descriptionRR: String, ingredientsRR: String, difficultyRR: String, timeRR: String, elaborationRR:String, lat: Double, lon:Double) {
        self.init()
        
        self.name1 = nameR
        self.imageR = imageR
        self.descriptionRR = descriptionRR
        self.ingredientsRR = ingredientsRR
        self.difficultyRR = difficultyRR
        self.timeRR = timeRR
        self.elaborationRR = elaborationRR
        self.lat = lat
        self.lon = lon
        
    }
    @IBAction func showMapVC(_ sender: Any) {
        let mapVC = MapViewController(lat: lat, lon: lon)
        navigationController?.pushViewController(mapVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text? = name1!
       // image.image? = imageR!
        descriptionR.text? = descriptionRR!
        ingredientsR.text? = ingredientsRR! + " ingredientes"
        difficultyR.text? = difficultyRR!
        timeR.text? = timeRR!
        elaborationR.text? = elaborationRR!
        btnMap.layer.cornerRadius = 10
        image.sd_setImage(with: URL(string: imageR), completed: nil)
        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
