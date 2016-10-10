//
//  Model.swift
//  DelegationAlert
//
//  Created by Arthur Loo on 10-10-16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import Foundation

class Model
{
    var labelTest : String = ""
    
    init(firstLabel: String) {
        self.labelTest = firstLabel
    }
    
    //Data
    static let loadData =
        Model(firstLabel: "testString")
    
}
