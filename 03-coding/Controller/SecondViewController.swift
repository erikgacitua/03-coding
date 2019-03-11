//
//  SecondViewController.swift
//  03-coding
//
//  Created by Erik Felipe Gacitua Arenas on 2/19/19.
//  Copyright © 2019 Erik Felipe Gacitua Arenas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var textviewResult: UITextView!
    @IBOutlet weak var stepper: UIStepper!
    
    
    var fibonacci : [Int] = [0,1]
    var fibId = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        updateLabel(id: Int(self.stepper.value))
    
    }

    func generateFibNumbers() {
        /*if (fibId <= 1 || fibId >= 100){
            return
        }*/
        //Generar numeros de fib. hasta el fibId
        for i in 2...fibId{
            fibonacci.append(fibonacci[i-1]+fibonacci[i-2])
        }
        let fibStr : [String] = fibonacci.compactMap({ String($0)})
            let result : String = fibStr.joined(separator: "\n")
            self.textviewResult.text = result
        }
    
    
    //Acción del botón + y -
    @IBAction func steperPressed(_ sender: UIStepper) {
        
        updateLabel(id: Int(sender.value))
        
    }
    
    func updateLabel(id: Int){
        
        self.fibId = id
        self.labelNumber.text = "\(self.fibId)"
        generateFibNumbers()
    }


}
