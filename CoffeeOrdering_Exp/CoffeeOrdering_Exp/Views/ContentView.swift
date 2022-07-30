//
//  ContentView.swift
//  CoffeeOrdering_Exp
//
//  Created by Shak Feizi on 7/29/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        OrderListView(orders: self.orderListVM.orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}