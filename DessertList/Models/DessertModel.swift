//
//  DessertModel.swift
//  DessertList
//
//  Created by Stephen Martin on 12/10/23.
//

import Foundation

class DessertModel{
    let idMeal: String
    let strMeal: String
    let strDrinkAlternate: String
    let strCategory: String
    let strArea: String
    let strInstructions: String
    let strMealThumb: String
    let strTags: String
    let strYoutube: String
    let strMeasureIngredient: [String]
    let strSource: String
    let strImageSource: String
    let strCreativeCommonsConfirmed: String
    let dateModified: String
    
    init(idMeal: String, strMeal: String, strDrinkAlternate: String, strCategory: String, strArea: String, strInstructions: String, strMealThumb: String, strTags: String, strYoutube: String, strMeasureIngredient: [String], strSource: String, strImageSource: String, strCreativeCommonsConfirmed: String, dateModified: String) {
        self.idMeal = idMeal
        self.strMeal = strMeal
        self.strDrinkAlternate = strDrinkAlternate
        self.strCategory = strCategory
        self.strArea = strArea
        self.strInstructions = strInstructions
        self.strMealThumb = strMealThumb
        self.strTags = strTags
        self.strYoutube = strYoutube
        self.strMeasureIngredient = strMeasureIngredient
        self.strSource = strSource
        self.strImageSource = strImageSource
        self.strCreativeCommonsConfirmed = strCreativeCommonsConfirmed
        self.dateModified = dateModified
    }
    
    
}
