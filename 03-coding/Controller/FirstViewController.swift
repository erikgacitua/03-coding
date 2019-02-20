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
    var userName = ""
    
    
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
            //El signo ! fuerza a poner siempre el texto ingresado (Se usa siempre y cuando el textFiel tiene un string)
            //print(textField.text!)
            self.userName = theText
            
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
        //Declaración de variable y se le da una condicón en una sola linea como un if (Técnica Boleana)
        let shouldEnterTheParty = (userName == "Juan Gabriel") || (userAge >= 18)//&& condición para dos variables que cumplan 
        
        if shouldEnterTheParty {
            print("Bienvenido a la fiesta!")
            self.view.backgroundColor = UIColor(displayP3Red: 49.0/255.0, green: 273.0/255.0, blue: 93.0/255.0, alpha: 0.7)
        } else {
            print("Lo siento, esta fiesta es privada, no tienes acceso")
            self.view.backgroundColor = UIColor(displayP3Red: 250.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)
        }
        
       /* if userName == "Juan Gabriel" {
            print("Puedes pasar a la fiesta!")
            //Este comando cambia el background de color según la condición
            self.view.backgroundColor = UIColor(displayP3Red: 49.0/255.0, green: 273.0/255.0, blue: 93.0/255.0, alpha: 0.7)
        }else{
            if userAge >= 18{
                print("Puedes pasar a la fiesta por ser mayor de edad")
                self.view.backgroundColor = UIColor(displayP3Red: 50.0/255.0, green: 160.0/255.0, blue: 250.0/255.0, alpha: 0.7)
            }else{
                print("Lo siento, esta fiesta es privada, no tienes acceso")
                self.view.backgroundColor = UIColor(displayP3Red: 250.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)
            }
        }*/
    }
    
}

