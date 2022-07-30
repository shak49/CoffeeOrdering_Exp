//
//  OrderListViewModel.swift
//  CoffeeOrdering_Exp
//
//  Created by Shak Feizi on 7/29/22.
//

import Foundation


class OrderViewModel {
    var order: Order
    var id = UUID()
    var name: String {
        return self.order.name
    }
    var coffeeName: String {
        return self.order.coffeeName
    }
    var total: Double {
        return self.order.total
    }
    var size: String {
        return self.order.size
    }
    
    init(order: Order) {
        self.order = order
    }
    
}

class OrderListViewModel: ObservableObject {
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        OrderAPIService().getOrders { orders in
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
}

