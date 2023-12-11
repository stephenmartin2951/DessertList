//
//  DetailView.swift
//  DessertList
//
//  Created by Stephen Martin on 12/10/23.
//

import SwiftUI

struct DetailView: View {
    let mealName: String
    let mealID: String
    @StateObject var viewModel = DetailViewModel()
    @State var dessertDetail: DessertModel?
    @State var ingredCount = 0
    var body: some View {
        VStack{
            Text("Today you will be making: ")
                .font(.callout)
                .multilineTextAlignment(.leading)
                .bold()
                .padding()
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .stroke(Color.black , lineWidth: 1)
                    .frame(width: 300, height: 50, alignment: Alignment.top   )
                    .overlay(Text(dessertDetail?.strMeal ?? "No Meal Selected")).bold()
                    .padding()
            Text("The required ingredients are: ")
                .font(.callout)
                .multilineTextAlignment(.leading)
                .bold()
            ForEach(0..<ingredCount, id: \.self){ ind in
                Text(dessertDetail?.strMeasureIngredient[ind] ?? "No Ingredients Selected")
                    .minimumScaleFactor(0.01)
                    .font(.system(size: 14))
            }
            Spacer()
                .frame(minHeight: 5, idealHeight: 10, maxHeight: 100)
                .fixedSize()
            Text("Please Follow the Following Instructions: ")
                .font(.callout)
                .multilineTextAlignment(.leading)
                .bold()
                .underline()
            Text(dessertDetail?.strInstructions ?? "No Instructions Provided")
                .padding()
                .minimumScaleFactor(0.01)
        }
        .background(Rectangle().foregroundColor(.cyan).opacity(0.30))
        .foregroundColor(.black)
        .task {
            do{
                dessertDetail = try await viewModel.getDessertDetails(idMeal: mealID)
                ingredCount = viewModel.getIngredCount(dessert: dessertDetail!)
            } catch {
                dessertDetail = nil
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(mealName: "Apam balik",mealID: "53049")
    }
}
