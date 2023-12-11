//
//  DessertProcessor.swift
//  DessertList
//
//  Created by Stephen Martin on 12/10/23.
//

import Foundation

//func DessertProcessor() async throws ->  [DessertModel]{
//    let desserts = try await fetchDessertsFromAPI()
//    var DessertModels = [DessertModel]()
//    
//    for dessert in desserts {
//        do{
//            let dessertDetails = try await fetchDessertDetails(mealID: dessert.idMeal)
//            DessertModels.append(DessertModel(idMeal: dessertDetails[0].idMeal, strMeal: dessertDetails[0].strMeal, strDrinkAlternate: dessertDetails[0].strDrinkAlternate ?? "", strCategory: dessertDetails[0].strCategory ?? "", strArea: dessertDetails[0].strArea ?? "", strInstructions: dessertDetails[0].strInstructions ?? "", strMealThumb: dessertDetails[0].strMealThumb ?? "", strTags: dessertDetails[0].strTags ?? "", strYoutube: dessertDetails[0].strYoutube ?? "", strMeasureIngredient: dessertDetails[0].strMeasureIngredient(), strSource: dessertDetails[0].strSource ?? "", strImageSource: dessertDetails[0].strImageSource ?? "", strCreativeCommonsConfirmed: dessertDetails[0].strCreativeCommonsConfirmed ?? "", dateModified: dessertDetails[0].dateModified ?? ""))
//        } catch {
//            print(error)
//        }
//        
//    }
//    
//    return DessertModels
//}
