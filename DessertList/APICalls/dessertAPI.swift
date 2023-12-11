//
//  dessertAPI.swift
//  DessertList
//
//  Created by Stephen Martin on 12/10/23.
//

import Foundation

func fetchDessertsFromAPI() async throws -> [Dessert] {
    
    let url = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let decoded = try JSONDecoder().decode(DessertSummary.self, from: data)
        
    return decoded.meals
        
}


func fetchDessertDetails(mealID: String) async throws -> [DessertDetails] {
    
    do{
        let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(DessertDetail.self, from: data)
        
        return decoded.meals
    }catch {
        print(error)
    }

        
    return [DessertDetails(idMeal: "Null", strMeal: "Null", strDrinkAlternate: "Null", strCategory: "Null", strArea: "Null", strInstructions: "Null", strMealThumb: "Null", strTags: "Null", strYoutube: "Null", strIngredient1: "Null", strIngredient2: "Null", strIngredient3: "Null", strIngredient4: "Null", strIngredient5: "Null", strIngredient6: "Null", strIngredient7: "Null", strIngredient8: "Null", strIngredient9: "Null", strIngredient10: "Null", strIngredient11: "Null", strIngredient12: "Null", strIngredient13: "Null", strIngredient14: "Null", strIngredient15: "Null", strIngredient16: "Null", strIngredient17: "Null", strIngredient18: "Null", strIngredient19: "Null", strIngredient20: "Null", strMeasure1: "Null", strMeasure2: "Null", strMeasure3: "Null", strMeasure4: "Null", strMeasure5: "Null", strMeasure6: "Null", strMeasure7: "Null", strMeasure8: "Null", strMeasure9: "Null", strMeasure10: "Null", strMeasure11: "Null", strMeasure12: "Null", strMeasure13: "Null", strMeasure14: "Null", strMeasure15: "Null", strMeasure16: "Null", strMeasure17: "Null", strMeasure18: "Null", strMeasure19: "Null", strMeasure20: "Null", strSource: "Null", strImageSource: "Null", strCreativeCommonsConfirmed: "Null", dateModified: "Null")]
        
}
