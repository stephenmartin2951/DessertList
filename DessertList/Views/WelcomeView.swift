//
//  WelcomeView.swift
//  DessertList
//
//  Created by Stephen Martin on 12/11/23.
//

import SwiftUI

struct WelcomeView: View {
    @State var dessert: [Dessert]?
    @State var isActive: Bool = false
    var body: some View {
        ZStack{
            if isActive{
                SelectView(dessert: dessert ?? [Dessert(strMeal: "Null", strMealThumb: "Null", idMeal: "Null")])
            } else {
                VStack{
                    Spacer()
                    Text("Delicious Desserts Coming Your Way").bold()
                        .padding()
                    Text("Stephen Martin")
                    Spacer()
                }
            }
        }
        .task {
            do {
                dessert = try await fetchDessertsFromAPI()
            } catch {
                dessert = nil
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation{
                    isActive = true
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
