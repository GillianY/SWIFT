//
//  main.swift
//  CH07Enum
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

//print("Hello, World!")
print(Gender.Male)
getGenger(Gender.Male)
print(Planet.Monday.rawValue)
let possiblePlanet = Planet(rawValue:5)
print(possiblePlanet ?? Planet.Monday)

