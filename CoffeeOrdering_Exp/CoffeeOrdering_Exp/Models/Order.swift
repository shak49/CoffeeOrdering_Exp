//
//  Order.swift
//  CoffeeOrdering_Exp
//
//  Created by Shak Feizi on 7/29/22.
//

import Foundation


struct Order: Codable {
    let name: String
    let coffeeName: String
    let total: Double
    let size: String
}
