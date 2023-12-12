//Structs created to match the data returned via API calls
import Foundation

struct DessertSummary: Decodable{
    let meals: [Dessert]
}

struct Dessert: Decodable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
    
    init(strMeal: String, strMealThumb: String, idMeal: String){
        self.strMeal = strMeal
        self.strMealThumb = strMealThumb
        self.idMeal = idMeal
    }
}

struct DessertDetail: Decodable{
    let meals: [DessertDetails]
}

struct DessertDetails: Decodable{
    let idMeal: String
    let strMeal: String
    let strDrinkAlternate: String?
    let strCategory: String?
    let strArea: String?
    let strInstructions: String?
    let strMealThumb: String?
    let strTags: String?
    let strYoutube: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
    
    init(idMeal: String, strMeal: String, strDrinkAlternate: String, strCategory: String, strArea: String,
         strInstructions: String, strMealThumb: String, strTags: String, strYoutube:String, strIngredient1: String,
         strIngredient2: String, strIngredient3: String, strIngredient4: String, strIngredient5: String, strIngredient6: String,
         strIngredient7: String, strIngredient8: String, strIngredient9: String, strIngredient10: String, strIngredient11: String,
         strIngredient12: String, strIngredient13: String, strIngredient14: String, strIngredient15: String, strIngredient16: String,
         strIngredient17: String, strIngredient18: String, strIngredient19: String, strIngredient20: String, strMeasure1: String,
         strMeasure2: String, strMeasure3: String, strMeasure4: String, strMeasure5: String, strMeasure6: String, strMeasure7: String,
         strMeasure8: String, strMeasure9: String, strMeasure10: String, strMeasure11: String, strMeasure12: String, strMeasure13: String,
         strMeasure14: String, strMeasure15: String, strMeasure16: String, strMeasure17: String, strMeasure18: String, strMeasure19: String,
         strMeasure20: String, strSource: String, strImageSource: String, strCreativeCommonsConfirmed: String, dateModified: String){
        self.idMeal = idMeal
        self.strMeal = strMeal
        self.strDrinkAlternate = strDrinkAlternate
        self.strCategory = strCategory
        self.strArea = strArea
        self.strInstructions = strInstructions
        self.strMealThumb = strMealThumb
        self.strTags = strTags
        self.strYoutube = strYoutube
        self.strIngredient1 = strIngredient1
        self.strIngredient2 = strIngredient2
        self.strIngredient3 = strIngredient3
        self.strIngredient4 = strIngredient4
        self.strIngredient5 = strIngredient5
        self.strIngredient6 = strIngredient6
        self.strIngredient7 = strIngredient7
        self.strIngredient8 = strIngredient8
        self.strIngredient9 = strIngredient9
        self.strIngredient10 = strIngredient10
        self.strIngredient11 = strIngredient11
        self.strIngredient12 = strIngredient12
        self.strIngredient13 = strIngredient13
        self.strIngredient14 = strIngredient14
        self.strIngredient15 = strIngredient15
        self.strIngredient16 = strIngredient16
        self.strIngredient17 = strIngredient17
        self.strIngredient18 = strIngredient18
        self.strIngredient19 = strIngredient19
        self.strIngredient20 = strIngredient20
        self.strMeasure1 = strMeasure1
        self.strMeasure2 = strMeasure2
        self.strMeasure3 = strMeasure3
        self.strMeasure4 = strMeasure4
        self.strMeasure5 = strMeasure5
        self.strMeasure6 = strMeasure6
        self.strMeasure7 = strMeasure7
        self.strMeasure8 = strMeasure8
        self.strMeasure9 = strMeasure9
        self.strMeasure10 = strMeasure10
        self.strMeasure11 = strMeasure11
        self.strMeasure12 = strMeasure12
        self.strMeasure13 = strMeasure13
        self.strMeasure14 = strMeasure14
        self.strMeasure15 = strMeasure15
        self.strMeasure16 = strMeasure16
        self.strMeasure17 = strMeasure17
        self.strMeasure18 = strMeasure18
        self.strMeasure19 = strMeasure19
        self.strMeasure20 = strMeasure20
        self.strSource = strSource
        self.strImageSource = strImageSource
        self.strCreativeCommonsConfirmed = strCreativeCommonsConfirmed
        self.dateModified = dateModified

    }
    
    func strMeasureIngredient() -> [String] {
        var strMeasureIngredient = [String]()
        if self.strMeasure1 == "" || self.strIngredient1 == ""{
            strMeasureIngredient.append("No ingredients or measurements provided")
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure1 ?? "NULL")  \(strIngredient1 ?? "NULL")")
        if self.strMeasure2 == "" || self.strIngredient2 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure2 ?? "NULL")  \(strIngredient2 ?? "NULL")")
        if self.strMeasure3 == "" || self.strIngredient3 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure3 ?? "NULL")  \(strIngredient3 ?? "NULL")")
        if self.strMeasure4 == "" || self.strIngredient4 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure4 ?? "NULL")  \(strIngredient4 ?? "NULL")")
        if self.strMeasure5 == "" || self.strIngredient5 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure5 ?? "NULL")  \(strIngredient5 ?? "NULL")")
        if self.strMeasure6 == "" || self.strIngredient6 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure6 ?? "NULL")  \(strIngredient6 ?? "NULL")")
        if self.strMeasure7 == "" || self.strIngredient7 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure7 ?? "NULL")  \(strIngredient7 ?? "NULL")")
        if self.strMeasure8 == "" || self.strIngredient8 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure8 ?? "NULL")  \(strIngredient8 ?? "NULL")")
        if self.strMeasure9 == "" || self.strIngredient9 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure9 ?? "NULL")  \(strIngredient9 ?? "NULL")")
        if self.strMeasure10 == "" || self.strIngredient10 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure10 ?? "NULL")  \(strIngredient10 ?? "NULL")")
        if self.strMeasure11 == "" || self.strIngredient11 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure11 ?? "NULL")  \(strIngredient11 ?? "NULL")")
        if self.strMeasure12 == "" || self.strIngredient12 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure12 ?? "NULL")  \(strIngredient12 ?? "NULL")")
        if self.strMeasure13 == "" || self.strIngredient13 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure13 ?? "NULL")  \(strIngredient13 ?? "NULL")")
        if self.strMeasure14 == "" || self.strIngredient14 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure14 ?? "NULL")  \(strIngredient14 ?? "NULL")")
        if self.strMeasure15 == "" || self.strIngredient15 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure15 ?? "NULL")  \(strIngredient15 ?? "NULL")")
        if self.strMeasure16 == "" || self.strIngredient16 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure16 ?? "NULL")  \(strIngredient16 ?? "NULL")")
        if self.strMeasure17 == "" || self.strIngredient17 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure17 ?? "NULL")  \(strIngredient17 ?? "NULL")")
        if self.strMeasure18 == "" || self.strIngredient18 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure18 ?? "NULL")  \(strIngredient18 ?? "NULL")")
        if self.strMeasure19 == "" || self.strIngredient19 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure19 ?? "NULL")  \(strIngredient19 ?? "NULL")")
        if self.strMeasure20 == "" || self.strIngredient20 == ""{
            return strMeasureIngredient
        }
        strMeasureIngredient.append("\(strMeasure20 ?? "NULL")  \(strIngredient20 ?? "NULL")")
        
        return strMeasureIngredient
    }
    
}
