//
//  DeleteOrder.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

func deleteAllOrder(item: [String]) {
    for or in arabOrders {
        if Int(item[1]) == or.index {
            orderStatementArr.removeAll {$0 == or.statement}
            totalPrice = totalPrice - (or.count * or.price)
        }
    }
}
