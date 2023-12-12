//A simple intro view that allows me to make the api call pulling the dessert list before
//displaying the dropdown menu (Picker). This avoids the dropdown being empty when the
//SelectView first loads
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
