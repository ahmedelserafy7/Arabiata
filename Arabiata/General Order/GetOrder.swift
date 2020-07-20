//
//  GetOrder.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

var arabOrder: Order?
var arabOrders = [Order]()
var orderPrice = 0
var totalPrice = 0
var orderStatementArr = [String]()

func getOrder(of sandwiches: [String]) {
    
    let orders = [Order(index: 1, food: "foul", price: 4), Order(index: 2, food: "falfel", price: 5), Order(index: 3, food: "batats", price: 8), Order(index: 4, food: "foul sogk", price: 10)]
    
    for sandwich in sandwiches {
        
        let orderArr = sandwich.components(separatedBy: "$")
        let sandwichIndex = orderArr.first
        
        for order in orders {
            
            if order.index == sandwichIndex?.first?.wholeNumberValue {
                
                arabOrder = order
                
                let sandwichesCount = Int(orderArr[1])!
                arabOrder?.count = sandwichesCount
                //                print("get order is \(arabOrders.count)")
                
                orderPrice = (arabOrder!.count) * (arabOrder!.price)
                arabOrder?.statement = "you need \(sandwichesCount) \(order.food), its price is \(order.price) EGP for one, and it costs \(orderPrice) EGP"
                
                totalPrice += orderPrice
                
                arabOrders.append(arabOrder!)
                orderStatementArr.append(arabOrder?.statement ?? "")
            }
        }
    }
}
