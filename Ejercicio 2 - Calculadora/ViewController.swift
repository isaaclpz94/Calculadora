//
//  ViewController.swift
//  Ejercicio 2 - Calculadora
//
//  Created by Isaac Mac on 23/9/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//
//\

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lbResult: UILabel!
    
    var resultado:Float = 0
    var numeroActual:Float = 0
    var operacion:String = "="
    
    @IBAction func numeros(sender: UIButton) {
        
        numeroActual = numeroActual * 10 + Float(sender.titleLabel!.text!.toInt()!)
        
        lbResult.text = "\(numeroActual)"
    }
    
    @IBAction func operacion(sender: UIButton) {
        
        switch operacion{
            case "=":
            resultado = numeroActual
            case "+":
            resultado += numeroActual
            case "-":
            resultado -= numeroActual
            case "*":
            resultado  *= numeroActual
            case "/":
            resultado /= numeroActual
        default:
            print("error")
        }
        
        numeroActual = 0
        lbResult.text = "\(resultado)"
        
        if(sender.titleLabel!.text == "="){
            resultado = 0
        }
        
        operacion = sender.titleLabel!.text! as String
        
    }

    @IBAction func borrar(sender: UIButton) {
        
        resultado = 0
        numeroActual = 0
        lbResult.text = "\(resultado)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lbResult.text = "\(resultado)"
    }
}

