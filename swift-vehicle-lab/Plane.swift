//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by ac on 1/29/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude:Double
    var altitude:Double = 0
    var inFlight:Bool {
        if speed > 0 && altitude > 0 {
            return true
        }
        return false
    }
    
    init( name:String, weight:Double,maxSpeed:Double ,maxAltitude:Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if !inFlight {
            speed = maxSpeed/10
            altitude = maxAltitude/10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        let newAltitude = altitude + maxAltitude/10
        if inFlight {
            if newAltitude < maxAltitude {
                altitude = newAltitude
            }
            else {
                altitude = maxAltitude
            }
            decelerate()
        } //if inFlight
    }
    
    func dive() {
        let newAltitude = altitude - maxAltitude/10
        if altitude > 0 {
            if newAltitude > 0 {
                altitude = newAltitude
            }
            else {
                altitude = 0
            }
            accelerate()
        } //if altitude > 0
        
    }
    
    func bankRight() {
        if inFlight {
            let newHeading = heading + 45
            if newHeading <= 360 {
                heading = newHeading
            }
            else {
                heading = newHeading - 360
            }
            speed -= speed/10
 
        }
    }
    
    func bankLeft() {
        if inFlight {
            let newHeading = heading - 45
            if newHeading >= 0 {
                heading = newHeading
            }
            else {
                heading = 360 + newHeading  //adding -ve value
            }
            speed -= speed/10
        } //if speed > 0
        
    }
    
}
