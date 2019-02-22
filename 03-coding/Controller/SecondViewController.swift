//
//  SecondViewController.swift
//  03-coding
//
//  Created by Erik Felipe Gacitua Arenas on 2/19/19.
//  Copyright © 2019 Erik Felipe Gacitua Arenas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var fibonacci : [Int] = [0,1]
    var fibId = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fibId = 80
        generateFibNumbers()
    }

    func generateFibNumbers() {
        if (fibId <= 1 || fibId >= 100){
            return
        }
        //Generar numeros de fib. hasta el fibId
        for i in 2...fibId{
            print(i)
            fibonacci.append(fibonacci[i-1]+fibonacci[i-2])
            print(fibonacci[i])
        }
        print(fibonacci)
    }
}

