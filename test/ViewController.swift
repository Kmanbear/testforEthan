//
//  ViewController.swift
//  test
//
//  Created by Kyle on 7/31/18.
//  Copyright © 2018 Kyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gameTitle: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        //sender is the object that calls this method (button)
        let title = sender.title(for: .normal)!
        gameTitle.text = "\(title)"
    }
    
    @IBOutlet weak var gatlinGunImage: UIImageView!
    @IBOutlet weak var sniperImage: UIImageView!
    @IBOutlet weak var gatlinGunHealthDisplay: UILabel!
    @IBOutlet weak var sniperHealthDisplay: UILabel!
    var gatlinGunHealth = 200
    var sniperHealth = 20
    
    func refresh() {
        if (gatlinGunHealth <= 0) {
            gatlinGunHealthDisplay.text = "Health: 0. You Lost."
            gatlinGunImage.image = UIImage(named: "explosion.jpg")
        }else{
            gatlinGunHealthDisplay.text = "Health: \(gatlinGunHealth) "
        }
        if (sniperHealth <= 0){
            sniperHealthDisplay.text = "Health: 0. You Lost."
            sniperImage.image = UIImage(named: "explosion.jpg")
        }else{
            sniperHealthDisplay.text = "Health: \(sniperHealth)"
        }
    }
    @IBAction func gatlinGunAttack(_ sender: UIButton) {
        sniperHealth -= 3
        refresh()
    }
    @IBAction func sniperAttack(_ sender: UIButton) {
        gatlinGunHealth -= 25
        refresh()
    }
    
    
    
    
}
