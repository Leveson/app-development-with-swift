//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Tshaka Lekholoane on 11/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
        let firstBreakfast = Food(name: "Bacon and Eggs", description: "Fried eggs with bacon strips")
        let secondBreakfast = Food(name: "Avocado Toast", description: "Fresh avocado with toasted bread")
        let thirdBreakfast = Food(name: "Pancakes", description: "Pancakes with syrup")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfast, secondBreakfast, thirdBreakfast])
        
        let firstLunch = Food(name: "Chicken salad", description: "Freshly picked with grilled chicken strips")
        let secondLunch = Food(name: "Fish and Chips", description: "Southern fried fish and freshly cut chips")
        let thirdLunch = Food(name: "Pizza", description: "Margarita")
        let lunch = Meal(name: "Lunch", food: [firstLunch, secondLunch, thirdLunch])
        
        let firstDinner = Food(name: "Steak", description: "Medium rare beef steak")
        let secondDinner = Food(name: "Soup", description: "Minestrone")
        let thirdDinner = Food(name: "Soylent", description: "\"Food\"")
        let dinner = Meal(name: "Dinner", food: [firstDinner, secondDinner, thirdDinner])
        
        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
    
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}
