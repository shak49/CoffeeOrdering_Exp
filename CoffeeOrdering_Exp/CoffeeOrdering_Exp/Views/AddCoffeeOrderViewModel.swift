//
//  AddCoffeeOrderViewModel.swift
//  CoffeeOrdering_Exp
//
//  Created by Shak Feizi on 8/1/22.
//

import Foundation


class AddCoffeeOrderViewModel: ObservableObject {
    var name: String = ""
    private var service: OrderAPIService
    
    @Published var coffeeName: String = ""
    @Published var size: String = "Medium"
    
    var coffeeList: [CoffeeViewModel] {
        return Coffee.all().map(CoffeeViewModel.init)
    }
    var total: Double {
        return calculateTotalPrice()
    }
    
    init() {
        self.service = OrderAPIService()
    }
    
    func placeOrder() {
        let order = Order(name: self.name, coffeeName: self.coffeeName, total: self.total, size: self.size)
        service.createOrder(order: order) { response in
            
        }
    }
    
    private func calculateTotalPrice() -> Double {
        let coffeeVM = coffeeList.first { $0.name == coffeeName }
        if let coffeeVM = coffeeVM {
            return coffeeVM.price * priceForSize()
        } else {
            return 0.0
        }
    }
    
    private func priceForSize() -> Double {
        let prices = [
            "Small" : 2.0,
            "Medium" : 3.0,
            "Large" : 4.0
        ]
        return prices[self.size]!
    }
}
