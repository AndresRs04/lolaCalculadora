//
//  ViewController.swift
//  Calculadora_Lola
//
//  Created by alumno on 9/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculadoraCaracter: UILabel!
    @IBOutlet weak var calculadora_resultado: UILabel!
    
    
    var caracter:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        borrarTodo()
    }
    
    func borrarTodo() {
        caracter = ""
        calculadoraCaracter.text = caracter
        calculadora_resultado.text = ""
    }
    
    @IBAction func Btn_borrarTodo(_ sender: Any) {
        borrarTodo()
    }
    
    @IBAction func Btn_borrarDigito(_ sender: Any) {
        if(!caracter.isEmpty){
            caracter.removeLast()
            calculadoraCaracter.text = caracter
        }
    }
    
    func agregar_Funcion (valor:String) {
        caracter = caracter + valor
        calculadoraCaracter.text = caracter
    }
    
    @IBAction func Btn_Dividir(_ sender: Any) {
        agregar_Funcion(valor: "/")
        
    }
    
    @IBAction func Btn_Multiplicar(_ sender: Any) {
        agregar_Funcion(valor: "*")
    }
    
    @IBAction func Btn_Restar(_ sender: Any) {
        agregar_Funcion(valor: "-")
    }
    
    @IBAction func Btn_Sumar(_ sender: Any) {
        agregar_Funcion(valor: "+")
    }
    
    @IBAction func Btn_Resultado(_ sender: Any) {
    
        let expresion = NSExpression(format: caracter)
        let resultado = expresion.expressionValue(with: nil, context: nil) as! Double
        let resultadoString = formatResult(resultado: resultado)
        calculadora_resultado.text = resultadoString
    }
    
    func formatResult (resultado:Double) -> String {
        if (resultado.truncatingRemainder(dividingBy: 1) 
            == 0)
        {
            return String(format: "%.0f", resultado)
        } else {
            return String(format:"%.2f", resultado)
            
        }
    }
    
    @IBAction func Btn_Decimal(_ sender: Any) {
        agregar_Funcion(valor: ".")
    }
    
    @IBAction func Btn_Cero(_ sender: Any) {
        agregar_Funcion(valor: "0")
    }
    
    @IBAction func Btn_Uno(_ sender: Any) {
        agregar_Funcion(valor: "1")
    }
    
    @IBAction func Btn_Dos(_ sender: Any) {
        agregar_Funcion(valor: "2")
    }
    
    @IBAction func Btn_Tres(_ sender: Any) {
        agregar_Funcion(valor: "3")
    }
    
    @IBAction func Btn_Cuatro(_ sender: Any) {
        agregar_Funcion(valor: "4")
    }
    
    @IBAction func Btn_Cinco(_ sender: Any) {
        agregar_Funcion(valor: "5")
    }
    
    @IBAction func Btn_Seis(_ sender: Any) {
        agregar_Funcion(valor: "6")
    }
    
    @IBAction func Btn_Siete(_ sender: Any) {
        agregar_Funcion(valor: "7")
    }
    
    @IBAction func Btn_Ocho(_ sender: Any) {
        agregar_Funcion(valor: "8")
    }
    
    @IBAction func Btn_Nueve(_ sender: Any) {
        agregar_Funcion(valor: "9")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

