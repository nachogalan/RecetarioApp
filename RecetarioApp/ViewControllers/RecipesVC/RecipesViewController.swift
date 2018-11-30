//
//  RecipesViewController.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 29/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit
import SDWebImage

class RecipesViewController: UIViewController {
    @IBOutlet weak var tableView1: UITableView!
    internal var recipes:[Recipes]!
    internal var recipesFiltered:[Recipes]!
    let searchController = UISearchController(searchResultsController: nil)
    var name: String?
    
    convenience init(recipes: [Recipes], name:String) {
        self.init()
        self.recipes = recipes
        self.name = name
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "RECETAS"
        registerCells()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    internal func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    internal func filterContentForSearchText(_ searchText: String) {
        recipesFiltered = recipes.filter({ (aRecipes: Recipes) -> Bool in
            return (aRecipes.title.lowercased().contains(searchText.lowercased()))
        })
        tableView1.reloadData()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func registerCells(){
        
        let identifier = "RecipesCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView1.register(cellNib, forCellReuseIdentifier: identifier)
        
    }
    
}

extension RecipesViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}



extension RecipesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return recipesFiltered.count
        }else {
            return recipes.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecipesCell = (tableView.dequeueReusableCell(withIdentifier: "RecipesCell", for: indexPath) as? RecipesCell)!
        let recipe = recipes[indexPath.row]
        
        
        if isFiltering() {
            let recipeFiltered = recipesFiltered[indexPath.row]
            cell.lblName.text = recipeFiltered.title
            cell.lblIngredients.text = recipeFiltered.difficulty
            cell.imgRecipe.sd_setImage(with: URL(string: recipeFiltered.img), completed: nil)
            
        }
        else {
            cell.lblName.text = recipe.title
            cell.lblIngredients.text = recipe.difficulty
            cell.imgRecipe.sd_setImage(with: URL(string: recipe.img), completed: nil)
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isFiltering() {
            
            let recepiesVC = SingularRecipeViewController(nameR: recipesFiltered[indexPath.row].title, imageR: recipesFiltered[indexPath.row].img, descriptionRR: recipesFiltered[indexPath.row].description, ingredientsRR: recipesFiltered[indexPath.row].ingredients, difficultyRR: recipesFiltered[indexPath.row].difficulty, timeRR: recipesFiltered[indexPath.row].time, elaborationRR: recipesFiltered[indexPath.row].preparation, lat: recipesFiltered[indexPath.row].lat, lon: recipesFiltered[indexPath.row].lon)
            navigationController?.pushViewController(recepiesVC, animated: true)
        } else {
            let recepiesVC = SingularRecipeViewController(nameR: recipes[indexPath.row].title, imageR: recipes[indexPath.row].img, descriptionRR: recipes[indexPath.row].description, ingredientsRR: recipes[indexPath.row].ingredients, difficultyRR: recipes[indexPath.row].difficulty, timeRR: recipes[indexPath.row].time, elaborationRR: recipes[indexPath.row].preparation, lat: recipes[indexPath.row].lat, lon: recipes[indexPath.row].lon)
            navigationController?.pushViewController(recepiesVC, animated: true)
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
}
