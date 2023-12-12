//The DetailViewModel handles the API call results and conforms them to a more manageable DessertModel.
//The main benefit I found with the DessertModel is it concatenantes each measurement and ingredient into
//a single array element making it easy to display something that is readable for the user
import Foundation

class DetailViewModel: ObservableObject {
    
    func getDessertDetails(idMeal: String) async throws -> DessertModel{
        
        var returnedDessert = DessertModel(idMeal: "Null", strMeal: "Null", strDrinkAlternate: "Null", strCategory: "Null", strArea: "Null", strInstructions: "Null", strMealThumb: "Null", strTags: "Null", strYoutube: "Null", strMeasureIngredient: ["Null"], strSource: "Null", strImageSource: "Null", strCreativeCommonsConfirmed: "Null", dateModified: "Null")
        
        do  {
            let dessertDetails = try await fetchDessertDetails(mealID: idMeal)
            returnedDessert = DessertModel(idMeal: dessertDetails[0].idMeal, strMeal: dessertDetails[0].strMeal, strDrinkAlternate: dessertDetails[0].strDrinkAlternate ?? "", strCategory: dessertDetails[0].strCategory ?? "", strArea: dessertDetails[0].strArea ?? "", strInstructions: dessertDetails[0].strInstructions ?? "", strMealThumb: dessertDetails[0].strMealThumb ?? "", strTags: dessertDetails[0].strTags ?? "", strYoutube: dessertDetails[0].strYoutube ?? "", strMeasureIngredient: dessertDetails[0].strMeasureIngredient(), strSource: dessertDetails[0].strSource ?? "", strImageSource: dessertDetails[0].strImageSource ?? "", strCreativeCommonsConfirmed: dessertDetails[0].strCreativeCommonsConfirmed ?? "", dateModified: dessertDetails[0].dateModified ?? "")
        } catch {
            print(error)
        }
        
        return returnedDessert
    }
    
    func getIngredCount(dessert: DessertModel) -> Int {
        return dessert.strMeasureIngredient.count
    }
}
