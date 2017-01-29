//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by ac on 1/29/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver:String
    var sponsors:[String]
    
    init(name:String, weight:Double, maxSpeed:Double , transmission:String, cylinders:Int, milesPerGallon:Double ,driver:String, sponsors:[String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight,maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon )
        
    }
    
    override func accelerate() {
        let newSpeed = speed + maxSpeed/5
        if newSpeed <= maxSpeed {
            speed = newSpeed
        }
        else {
             speed = maxSpeed
        }

    }
    
    override func decelerate() {
        let newSpeed = speed - maxSpeed/5
        if newSpeed > 0 {
            speed = newSpeed
        }
        else {
            speed = 0
        }

    }
    
    func driftRight() {
        if speed > 0 {
            let newHeading = heading + 90
            if newHeading <= 360 {
                heading = newHeading
            }
            else {
                heading = newHeading - 360
            }
            speed -= speed/4
        } //if speed > 0

    }
    
    func driftLeft() {
        if speed > 0 {
            let newHeading = heading - 90
            if newHeading >= 0 {
                heading = newHeading
            }
            else {
                heading = 360 + newHeading  //-ve value
            }
            speed -= speed/4
        } //if speed > 0

    }
    
    
}
