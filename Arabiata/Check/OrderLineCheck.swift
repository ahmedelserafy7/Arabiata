//
//  CheckOrderLine.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

func checkOrderLine() {
    
    while let line = readLine() {
        
        if line == "Order$Ahmed" {
            getMyOrder()
            
        } else if line.contains("Delete@") && line.contains("#") {
            
            let item = line.components(separatedBy: "@")
            deleteSpecific(item: item)
            
        } else if line.contains("Delete$") {
            
            let item = line.components(separatedBy: "$")
            deleteAllOrder(item: item)
            
        } else if line.contains("$") {
            
            let sandwiches = line.components(separatedBy: ",")
            getOrder(of: sandwiches)
            
        } else if line == "anazbon"{
            
            if let savedArray = defaults.array(forKey: "SavedArray") {
                savedArray.forEach{ print($0)}
            }
            
            print("\nSo the total price is \(totalPrice) EGP")
            continue
            
        } else if line == "khalst" {
            print("Thank you for your time!")
            exit(EXIT_SUCCESS)
        } else {
            print("\nSorry, order not identified!\n")
        }
        
        saveOrder()
        printOrders()
        checkTotalOrder()
        
        enterOrder()
    }
}
