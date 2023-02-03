//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct Story {
    let title: String
    let choice1: String
    let choice2: String
    let destination1: Int
    let destination2: Int
    
    init(title: String, choice1: String, choice2: String, destination1: Int, destination2: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.destination1 = destination1
        self.destination2 = destination2
    }
}
