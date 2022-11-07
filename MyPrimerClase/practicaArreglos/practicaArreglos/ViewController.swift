//
//  ViewController.swift
//  practicaArreglos
//
//  Created by IMAC17 on 14/10/22.
//

import UIKit

class ViewController: UIViewController {
    // Arreglo Vacio
    var arreglo: [String] = []
     
    @IBOutlet weak var caja1: UITextField!
    
    
    
    
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.text=""
    }

    @IBAction func guardar(_ sender: Any) {
        if let t = caja1.text{
            if t.isEmpty==false{
                arreglo.append(t)
                caja1.text = ""
                textView.text+=t+"\n"
            }
        }
        
            
    }
    
    
    @IBAction func mostrar(_ sender: Any) {
        var cad: String = ""
        for elemento in arreglo{
            cad += elemento+"\n"
        }
        textView.text = cad
    }
    
    
}

