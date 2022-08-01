//
//  CoffeeViewModel.swift
//  CoffeeOrdering_Exp
//
//  Created by Shak Feizi on 8/1/22.
//

import Foundation


class CoffeeViewModel {
    var coffee: Coffee
    
    var name: String {
        return self.coffee.name
    }
    var imageURL: String {
        return self.coffee.imageURL
    }
    var price: Double {
        return self.coffee.price
    }
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
}

class CoffeeListViewModel {
    var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
}
