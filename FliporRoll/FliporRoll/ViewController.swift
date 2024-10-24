//
//  ViewController.swift
//  FliporRoll
//
//  Created by V Pavan on 24/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flipRollSelector: UISegmentedControl!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    var state1="Dice"
    
    let dices = ["D1","D2","D3","D4","D5","D6"]
    
    let coin = ["CH","CT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Image.image = UIImage(named: "dice")
        text.text = "Start"
        flipRollSelector.addTarget(self, action: #selector(segmentedControlChanged(_:)), for: .valueChanged)
           }
    @objc func segmentedControlChanged(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        // Get the title of the selected segment
        if selectedIndex==1{
            state1="Coin"
            Image.image = UIImage(named: "coin")
            text.text = "Start"
        }
            else{
                state1="Dice"
                Image.image = UIImage(named: "dice")
                text.text = "Start"
            }
        
    }

    @IBAction func playButton(_ sender: Any) {
        if state1=="Dice"{
            let dice = dices.randomElement()!
            print(dice)
            Image.image = UIImage(named: "\(dice)")
            switch dice {
            case "D1":
                text.text = "One"
            case "D2":
                text.text = "Two"
            case "D3":
                text.text = "Three"
            case "D4":
                text.text = "Four"
            case "D5":
                text.text = "Five"
            case "D6":
                text.text = "Six"
            default :
                text.text = "Start"
            }
        }else{
            let coin1 = coin.randomElement()!
            print(coin1)
            Image.image = UIImage(named: "\(coin1)")
            switch coin1 {
            case "CT":
                text.text = "Tails"
            case "CH":
                text.text = "Heads"
            default :
                text.text = "Start"
            }
        }
    }
    
}

