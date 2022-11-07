//
//  ViewController.swift
//  SumaDeDosNumeros
//
//  Created by IMAC17 on 12/10/22.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var caja1: UITextField!
    

    @IBOutlet weak var caja2: UITextField!
    
   
    
    @IBOutlet weak var labe1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionClick(_ sender: Any) {
        //print("si entro")
       // let a = Int(caja1.text!)
        //let b = Int(caja2.text!)
        
        //let c: Int = a+b
        if let a = caja1.text, let b = caja2.text{
            if a.isEmpty==false && b.isEmpty==false{
                let c: Int = Int(a)!+Int(b)!
                labe1.text = String(c)
            }else{
                labe1.text = "agun valor esta vacio"
            }
           
        }else{
            labe1.text = "alguno es nil"
        }
    }
}

