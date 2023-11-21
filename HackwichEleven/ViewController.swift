//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Lina Dacanay on 11/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelButton: UIButton!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelNumber: UILabel!
    
    @IBOutlet weak var labelNumber1: UILabel!
    
    @IBOutlet weak var labelNumber2: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        //PART 7
        
        let message = "The Value is:\(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle:.alert)
                               
                let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
                               
                alert.addAction(action)
                               
                present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
       
        print("The Value of the Slider is:\(slider.value)")
        currentValue = Int((slider.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 1 #1
    
        targetValue = Int.random(in: 0...100)
        
        currentValue = Int(slider.value)
        
        currentValue = lroundf(slider.value)
        
        startNewRound()
        
        //Completed Part1
        labelButton.setTitle("My Guess", for: .normal)
        
        labelOne.text = "Slide as Close as You Can to:"
        
        labelNumber.text = "100"
        
        labelNumber1.text = "1"
        
        labelNumber2.text = "100"
        
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 0...100)
        currentValue = Int(slider.value)
    }
   
   

}

