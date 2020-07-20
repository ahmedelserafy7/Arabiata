//
//  Order.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

class Order {
    
    var index: Int
    var food: String
    var price: Int
    
    var statement: String?
    var count = 0
    
    init(index: Int, food: String, price: Int) {
        self.index = index
        self.food = food
        self.price = price
    }
}
