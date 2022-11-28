//
//  ViewController.swift
//  calculadoraFelix
//
//  Created by IMAC17 on 15/11/22.
//

import UIKit

class ViewController: UIViewController {

    var resultado: String = "0"
    var operacion: Int = 0
    var valor1 = ""
    var valor2 = ""
    var acumulador: Int = 0
    var flag: Bool = false
    
    
    @IBOutlet weak var BtnClear: UIButton!
    
    @IBOutlet weak var LabelResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LabelResultado.text = "0"
        
        
        
    }
    
    @IBAction func btn0(_ sender: Any) {
        if (LabelResultado.text == "0"){
            LabelResultado.text =  "0"
        }else{
            LabelResultado.text = LabelResultado.text! + "0"
        }
      
        
    }
    
    
    @IBAction func btn1(_ sender: Any) {
        
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "1"
        }else{
            LabelResultado.text = LabelResultado.text! + "1"
        }
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "2"
        }else{
            
            LabelResultado.text = ""
            
        LabelResultado.text = LabelResultado.text! + "2"
        }
    }
    
    
    @IBAction func btn3(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "3"
        }else{
            LabelResultado.text = ""
        LabelResultado.text = LabelResultado.text! + "3"
        }
    }
    @IBAction func btn4(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "4"
        }else{
            LabelResultado.text = ""
        LabelResultado.text = LabelResultado.text! + "4"
        }
    }
    
    @IBAction func btn5(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "5"
        }else{
            LabelResultado.text = ""
        LabelResultado.text = LabelResultado.text! + "5"
        }
    }
    
    @IBAction func btn6(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "6"
        }else{
            LabelResultado.text = ""
        LabelResultado.text = LabelResultado.text! + "6"
        }
    }
    
    @IBAction func btn7(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "7"
        }else{
            LabelResultado.text = ""
            LabelResultado.text = LabelResultado.text! + "7"
            
       
        }
    }
    
    
    @IBAction func btn8(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "8"
        }else{
            LabelResultado.text = ""
        LabelResultado.text = LabelResultado.text! + "8"
        }
    }
    
    @IBAction func btn9(_ sender: Any) {
        if (LabelResultado.text == "0"){
            
            LabelResultado.text =  "9"
        }else{
            LabelResultado.text = ""
        LabelResultado.text = LabelResultado.text! + "9"
        }
    }
    
    
    @IBAction func btnPunto(_ sender: Any) {
        
        LabelResultado.text = "."
    }
    
    @IBAction func btnIgual(_ sender: Any) {
        valor2 = LabelResultado.text!
        
        switch operacion{
           case 1:
               let v1 = (Int(valor1)!)
               let v2 = (Int(valor2)!)
               acumulador = (v1 + v2)
               LabelResultado.text = (String(acumulador))
            break
            
        case 2:
            let v1 = (Int(valor1)!)
            let v2 = (Int(valor2)!)
            let resultado = v1 - v2
         LabelResultado.text = (String(resultado))
         break
        case 3:
            let v1 = (Int(valor1)!)
            let v2 = (Int(valor2)!)
            let resultado = v1 * v2
         LabelResultado.text = (String(resultado))
         break
        case 4:
            let v1 = (Int(valor1)!)
            let v2 = (Int(valor2)!)
            let resultado = v1 / v2
         LabelResultado.text = (String(resultado))
         break
        default: break
            
        }
        operacion = 0
    }
    
    @IBAction func btnSuma(_ sender: Any) {
        
        valor1 = LabelResultado.text!
        let v1 = (Int(valor1)!)
        acumulador = acumulador + v1
        LabelResultado.text = String(acumulador)
        operacion = 1
    }
    
    @IBAction func btnResta(_ sender: Any) {
        
        valor1 = LabelResultado.text!
        let v1 = (Int(valor1)!)
        acumulador = acumulador - v1
        LabelResultado.text = String(acumulador)
        operacion = 2
    }
    
    @IBAction func btnMulti(_ sender: Any) {
        valor1 = LabelResultado.text!
        let v1 = (Int(valor1)!)
        acumulador = acumulador * v1
        LabelResultado.text = String(acumulador)
        operacion = 3
    }
    
    
    @IBAction func btnDiv(_ sender: Any) {
        valor1 = LabelResultado.text!
        let v1 = (Int(valor1)!)
        acumulador = acumulador / v1
        LabelResultado.text = String(acumulador)
        operacion = 4
    }
    
    @IBAction func btnModulo(_ sender: Any) {
        valor1 = LabelResultado.text!
        operacion = 5
        LabelResultado.text = ""
    }
    
    @IBAction func btnMasMenos(_ sender: Any) {
    }
    
    @IBAction func btnClear(_ sender: Any) {
        valor1 = ""
        valor2 = ""
        acumulador = 0
        operacion = 0
        LabelResultado.text! = "0"
    }
    
    func Acumulador_Igual(){
        
        
    }
    
}

