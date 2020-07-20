//
//  TotalPriceCheck.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

func checkTotalOrder() {
    if totalPrice == 0 {
        print("There's no order yet!")
        totalPrice = 0
    } else {
        print("\nSo the total price is \(totalPrice) EGP")
    }
}
