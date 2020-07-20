//
//  DeleteSpecificCount.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

var sandwichesCount = 0

func deleteSpecific(item: [String]) {
    
    let indexWithCount = item[1]
    let indexWithCountArr = indexWithCount.components(separatedBy: "#")
    
    guard let index = Int(indexWithCountArr.first!) else { return }
    guard let count = Int(indexWithCountArr[1]) else { return }
    
    for order in arabOrders {
        
        if order.index == index {
            
            if count > order.count {
                continue
            }
            
            orderStatementArr.removeAll {$0 == order.statement}
            
            sandwichesCount = order.count - count
            order.statement = "you need \(sandwichesCount) \(order.food), its price is \(order.price) EGP for one, and it costs \((sandwichesCount) * order.price) EGP"
            
            orderStatementArr.append(order.statement!)
            
            order.count = sandwichesCount
            
            if sandwichesCount == 0 {
                orderStatementArr.removeAll {$0 == order.statement}
            } else if sandwichesCount < 0 {
                orderStatementArr.removeAll {$0 == order.statement}
                continue
            }
            
            totalPrice = totalPrice - (count * order.price)
        }
        
        //        print("count is \(count)")
    }
}
