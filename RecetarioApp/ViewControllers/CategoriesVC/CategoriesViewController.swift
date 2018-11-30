//
//  CategoriesViewController.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 28/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    internal var categoriesArr: [Categories] = []
    internal var recipesMeat: [Recipes] = []
    internal var recipesFish: [Recipes] = []
    internal var recipesVegetables: [Recipes] = []
    internal var recipesDesserts: [Recipes] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
        loadCategories()
        title = "CATEGORIES"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func loadCategories() {
        
        
        let recipesMeat1 = Recipes(title: "Filete",img: "https://www.ecestaticos.com/imagestatic/clipping/74e/754/74e754e76171bd0eddf37a2aa7d279be/cocinas-mal-el-filete-de-ternera-esta-es-la-mejor-forma-de-hacerlo.jpg?mtime=1491388988",difficulty: "Easy", description: "Es un filete de cerdo a la plancha", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesMeat2 = Recipes(title: "Pollo",img: "https://4.bp.blogspot.com/-_sh1lWdaHk0/WVrB_1Oi6BI/AAAAAAAAK1g/MUmIxhj3gtU1i0SjErFk1YZADQXLaAo0ACLcBGAs/s640/pollo-al-horno-aromatizado-bajo-la-piel-01b.jpg",difficulty: "Medium", description: "Un pollo asado muy rico", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesMeat3 = Recipes(title: "Salamandra",img: "https://www.biodiversidadvirtual.org/reptiles/data/media/32/Salamandra-salamandra-19427.jpg",difficulty: "Difficult", description: "Salamandra al ajillo con fuet", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesFish1 = Recipes(title:"Cangrejo",img:"https://img-global.cpcdn.com/002_recipes/d4639f9c6b50bf2e/751x532cq70/photo.jpg",difficulty:"Easy", description: "Cangrejo de 1Kg del Norte de España", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesFish2 = Recipes(title:"Atun",img:"https://i.pinimg.com/originals/e3/80/25/e38025432f70cef02355845de6e7cb14.jpg",difficulty:"Difficult", description: "Bonito del Norte", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesVegetables1 = Recipes(title: "Pepino",img: "https://sevilla.abc.es/gurme//wp-content/uploads/2014/06/tzaziki-yogur-1440x810.jpg",difficulty: "Easy", description: "Pepino en salmuera", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesVegetables2 = Recipes(title: "Puerro",img: "https://pbs.twimg.com/media/DNItUM1WkAIiOPf.jpg",difficulty: "Medium", description: "Pure de puerro", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesVegetables3 = Recipes(title: "Apio",img: "https://image.freepik.com/foto-gratis/plato-verde-ensalada-apio-aderezo-perejil_24558-154.jpg",difficulty: "Difficult", description: "Apio sin mas, es un apio...", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesVegetables4 = Recipes(title: "Lechuga",img: "https://1.bp.blogspot.com/-vW_sfIg0QNI/WGGIPU5NxZI/AAAAAAAAMKc/uTRoxq5DusQqi4_uJCk_GdiSfLobdyISgCLcB/s1600/ensalada.jpg",difficulty: "Very Difficult", description: "Una ensaladita fresh pa tu body", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesDesserts1 = Recipes(title: "Flan",img: "https://pbs.twimg.com/media/C-k1X2yXkAAWsHL.jpg",difficulty: "Easy", description: "Flan de huevo con nata", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        let recipesDesserts2 = Recipes(title: "Tarta",img: "https://s-media-cache-ak0.pinimg.com/originals/7c/10/62/7c106267ea17897cb0c73bd87b9cae54.jpg",difficulty: "Medium", description: "Tarta de mango y fresa", ingredients: "1", preparation: "Hecha el filete a la sarten, dale la vuelta despues de 2 minutos y a comer", time: "10 min", lat: 40.4167, lon: -3.7037)
        
        recipesMeat.append(recipesMeat1)
        recipesMeat.append(recipesMeat2)
        recipesMeat.append(recipesMeat3)
        recipesFish.append(recipesFish1)
        recipesFish.append(recipesFish2)
        recipesVegetables.append(recipesVegetables1)
        recipesVegetables.append(recipesVegetables2)
        recipesVegetables.append(recipesVegetables3)
        recipesVegetables.append(recipesVegetables4)
        recipesDesserts.append(recipesDesserts1)
        recipesDesserts.append(recipesDesserts2)
        
        let meat = Categories(title: "Carnes",arrRecipes: recipesMeat, img: "carne")
        let fish = Categories(title: "Pescados",arrRecipes: recipesFish, img: "pescado")
        let vegetables = Categories(title: "Verduras",arrRecipes: recipesVegetables, img: "verdura")
        let desserts = Categories(title: "Postres",arrRecipes: recipesDesserts, img: "postre")
        
        categoriesArr.append(meat)
        categoriesArr.append(fish)
        categoriesArr.append(vegetables)
        categoriesArr.append(desserts)
    }
    
    private func registerCells(){
        let cellName = "CategoryTableViewCell"
        let identifier = "categoryCell"
        let cellNib = UINib(nibName: cellName, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
        
    }
    
    


}

extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesArr.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
           let cell: CategoryTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryTableViewCell)!
            let category = categoriesArr[indexPath.row]
            cell.lblTitle.text = category.title
            
        
            let numberRec = category.arrRecipes.count
            let numberRecStr = "\(numberRec)"
            cell.lblNumRecepies.text = numberRecStr
            cell.imgCategory.image = UIImage(named: category.img)
        
            
            
         return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recepiesVC = RecipesViewController(recipes: categoriesArr[indexPath.row].arrRecipes, name: categoriesArr[indexPath.row].title)
        navigationController?.pushViewController(recepiesVC, animated: true)
    }
}
