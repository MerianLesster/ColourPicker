//
//  Colour.swift
//  ColourPick
//
//  Created by Damian Ranjit on 2021-02-02.
//

import Foundation
import UIKit

class Colour {
    var redValue:Float = 0.0
    var greenValue:Float = 0.0
    var blueValue:Float = 0.0
    
    init(red:Float, green:Float, blue:Float) {
        redValue = red
        greenValue = green
        blueValue = blue
    }
    
    func getColour() -> UIColor {
        let newColour = UIColor(red: CGFloat(redValue/255.0), green: CGFloat(greenValue/255.0), blue: CGFloat(blueValue/255.0), alpha: 1.0)
        return newColour
    }
}
