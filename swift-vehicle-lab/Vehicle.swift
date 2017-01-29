//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by ac on 1/28/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name:String
    let weight:Double
    let maxSpeed:Double
    var speed:Double = 0
    var heading:Double = 0   //angle 0 - 360
    
    init(name:String, weight:Double,maxSpeed:Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
       speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        let newSpeed = speed + maxSpeed/10
        if newSpeed < maxSpeed {
            speed = newSpeed
        }
        else {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        let newSpeed = speed - maxSpeed/10
        if newSpeed > 0 {
            speed = newSpeed
        }
        else {
            speed = 0
        }
    }
    
    func turnRight() {
        if speed > 0 {
            let newHeading = heading + 90
            if newHeading <= 360 {
              heading = newHeading
            }
            else {
                heading = newHeading - 360
            }
            speed -= speed/2
        } //if speed > 0
    }
    
    func turnLeft() {
        if speed > 0 {
            let newHeading = heading - 90
            if newHeading >= 0 {
                heading = newHeading
            }
            else {
                heading = 360 + newHeading  //adding -ve value
            }
            speed -= speed/2
        } //if speed > 0
        
    }
}

