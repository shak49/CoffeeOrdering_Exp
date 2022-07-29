//
//  Coffee.swift
//  CoffeeOrdering_Exp
//
//  Created by Shak Feizi on 7/29/22.
//

import Foundation


struct Coffee {
    let name: String
    let imageURL: String
    let price: Double
}

extension Coffee {
    static func all() -> [Coffee] {
        var coffees: [Coffee] = [
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "Espresson", price: 2.1),
            Coffee(name: "Regular", imageURL: "Regular", price: 1.0)
        ]
        return coffees
    }
}
