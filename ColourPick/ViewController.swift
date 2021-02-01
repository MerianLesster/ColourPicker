//
//  ViewController.swift
//  ColourPick
//
//  Created by Damian Ranjit on 2021-02-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var colourView: UIImageView!
    @IBOutlet weak var labelRGB: UILabel!
    
    var colour:Colour?
    var r:String = "0"
    var g:String = "0"
    var b:String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelRed.text = "0"
        labelGreen.text = "0"
        labelBlue.text = "0"
        colour = Colour(red: 0.0, green: 0.0, blue: 0.0)
        colourView.backgroundColor = colour?.getColour()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderRedChanged(_ sender: UISlider) {
        r = String(format: "%.0f", sender.value)
        labelRed.text = r
        labelRGB.text = "("+r+","+g+","+b+")"
        colour?.redValue = sender.value;
        colourView.backgroundColor = colour?.getColour()
    }
    
    @IBAction func sliderGreenChanged(_ sender: UISlider) {
        g = String(format: "%.0f", sender.value)
        labelGreen.text = g
        labelRGB.text = "("+r+","+g+","+b+")"
        colour?.greenValue = sender.value;
        colourView.backgroundColor = colour?.getColour()
    }
    
    @IBAction func sliderBlueChanged(_ sender: UISlider) {
        b = String(format: "%.0f", sender.value)
        labelBlue.text = b
        labelRGB.text = "("+r+","+g+","+b+")"
        colour?.blueValue = sender.value;
        colourView.backgroundColor = colour?.getColour()
    }
}

