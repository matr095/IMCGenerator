//
//  ViewController.swift
//  SwiftTuto1
//
//  Created by Mathieu on 25/09/2015.
//  Copyright © 2015 Mathieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var poids: UITextField!
    
    @IBOutlet weak var taille: UITextField!

    @IBOutlet weak var imc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Calcul(sender: AnyObject) {
        
        var Age = Int(age.text!)
        var Poids = Double(poids.text!)
        var Taille = Double(taille.text!)
        
        if(age.text! == ""){
            Age = 18
            age.text! == String("18")
        }
        
        if(poids.text! == ""){
            Poids = 70
            poids.text! == String("70")
        }
        
        if(taille.text! == ""){
            Taille = 180
            taille.text! == String("180")
        }
        
        let Calcul0 = Taille! / 100
        let Calcul1 = Calcul0 * Calcul0
        let Calcul2 = Poids! / Calcul1
       
        if (Age<=30){
            imc.text = String(Calcul2)
        }
        if (Age>=30){
            let Calcul3 = Calcul2 - 2
            imc.text = String(Calcul3)
        }
        
        
        
        
        
        
    }
    


}

