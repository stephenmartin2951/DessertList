//SelectView allows the user to peruse the list of desserts returned by the API,
//make a selection, and then proceed to the details provided in DetailView
import SwiftUI

struct SelectView: View {
    @State var dessert: [Dessert]
    private let dessertPlaceHolder = [Dessert(strMeal: "Null", strMealThumb: "Null", idMeal: "Null")]
    @State private var selection = "Select Item"
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Spacer()
                Text("Please Select a Dessert")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.callout)
                    .bold()
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .stroke(Color.black , lineWidth: 1)
                        .frame(width: 400, height: 50, alignment: .center   )
                        .padding()
                        .overlay(Picker("Select a Dessert", selection: $selection){
                            ForEach(dessert, id: \.strMeal){
                                    Text($0.strMeal)
                            }
                            .padding()
                            .pickerStyle(.menu)
                        })

                Text("You Have Selected: \(selection == "Select Item" ? dessert[0].strMeal : selection)")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                if selection != "Select Item"{
                    NavigationLink(destination: DetailView(mealName: selection, mealID: findMealID(mealName: selection))){
                        Text("Continue to Dessert Details")
                            .underline()
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                Spacer()
            }
        }
    }
    func findMealID(mealName: String) -> String {
        for d in dessert{
            if(selection == d.strMeal){
                return d.idMeal
            }
        }
        return "00000"
    }
}



struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView(dessert: [Dessert(strMeal: "Apam balik", strMealThumb: "Null", idMeal: "Null")])
    }
}
