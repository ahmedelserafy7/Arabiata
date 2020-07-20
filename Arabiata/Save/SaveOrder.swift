//
//  SaveOrder.swift
//  Arabiata_Test
//
//  Created by Elser_10 on 7/20/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import Foundation

let defaults = UserDefaults.standard
func saveOrder() {
    defaults.set(orderStatementArr, forKey: "SavedArray")
}
