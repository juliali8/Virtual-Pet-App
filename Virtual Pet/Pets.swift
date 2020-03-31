//
//  Pets.swift
//  Virtual Pet
//
//  Created by Julia Li on 6/26/18.
//  Copyright © 2018 Julia Li. All rights reserved.
//

import Foundation

class Pet {
    
    private (set) var happinessLevel: Int
    private (set) var foodLevel: Int
    var currentPet: typeOfPet
    
    enum typeOfPet{
        case dog
        case cat
        case bird
        case bunny
        case fish
    }
    
    func play() {
        happinessLevel += 5
        if(happinessLevel < 0){
            happinessLevel = 0
        }
    }
    
    func feed() {
        foodLevel += 5
        if(foodLevel > 100) {
            foodLevel = 100
        }
    }
    
    init(pet: typeOfPet) {
        self.currentPet = pet
        happinessLevel = 0
        foodLevel = 0
    }
}
