//
//  ViewController.swift
//  Calculadora_Lola
//
//  Created by alumno on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boton_para_interactuar: UIButton!
    @IBOutlet weak var texto_a_cambiar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func que_hacer_pushar_boton(_ sender: Any) {
        texto_a_cambiar.text = "Bienvenidos al Himalaya"
    }
}

