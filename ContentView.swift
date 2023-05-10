import SwiftUI
struct Pizza {
    let pizzaPlace: String
    let topping1: String
    let topping2: String
    let topping3: String
    let slices: Int
    let pizzaimage: Image
    
}
var pizzalist = [
    Pizza(pizzaPlace: "CPK", topping1: "cheese", topping2: "sausage", topping3: "tomato", slices: 8, pizzaimage: Image("829")),
    Pizza(pizzaPlace: "NYC $1 SLICE", topping1: "cheese", topping2: "spinach", topping3: "tomato", slices: 8, pizzaimage: Image("IMG_3173")),
    Pizza(pizzaPlace: "PIZZA HUT", topping1: "sauce", topping2: "mushrooms", topping3: "tomato", slices: 8, pizzaimage: Image("unnamed")),
    Pizza(pizzaPlace: "LOU", topping1: "baked cheese", topping2: "basil", topping3: "tomato", slices: 8, pizzaimage: Image("download"))
]
struct ContentView: View {
    var body: some View {
        NavigationView {
            
            
            List(pizzalist, id: \.pizzaPlace){ p in
                HStack {
                    p.pizzaimage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text(p.pizzaPlace)
                //insert modifier here
                }
            }
            .navigationTitle("My Places")

        }
    }
}
