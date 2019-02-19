//
//  FirstViewController.swift
//  03-coding
//
//  Created by Erik Felipe Gacitua Arenas on 2/19/19.
//  Copyright © 2019 Erik Felipe Gacitua Arenas. All rights reserved.
//

import UIKit
//En la clase del viewController agremas una (,) y agregamos "UITextFieldDelegate" para controlar que el teclado se cierre al momento de presionar la tecla enter o ir
class FirstViewController: UIViewController, UITextFieldDelegate {

    //Label Age
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!
    
    var userAge = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateAgeLabel()
    }
    //Comando que cierra el teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
       
        //Recuperamos el contenido del textfield si es que existe
        if let theText = textField.text{
                print(textField.text!)//El signo ! fuerza a poner siempre el texto ingresado (Se usa siempre y cuando el textFiel tiene un string)
        }
        return true
    }
    //Slider Move
    @IBAction func sliderAgeMove(_ sender: UISlider) {
        
        self.updateAgeLabel()
    }
    //Función que muestra la edad
    func updateAgeLabel(){
        userAge = Int(self.sliderAge.value)
        self.labelAge.text = "\(userAge)"
    }
    //Acción del botón
    @IBAction func validateData(_ sender: UIButton) {
        
    }
    
}

