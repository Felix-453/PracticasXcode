//
//  ViewController.swift
//  Menu
//
//  Created by IMAC17 on 19/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func desayunos(_ sender: Any) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDesayunos"{
            //casting
            if let ventana = segue.destination as? ViewDesayunos{
                ventana.datoRecibe = "Menu desayunos"
            }
        }
        if segue.identifier == "goComidas"{
            //casting
            if let ventana = segue.destination as? ViewComidas{
                ventana.datoRecibe = "Menu Comidas"
            }
        }
        if segue.identifier == "goCenas"{
            //casting
            if let ventana = segue.destination as? ViewCenas{
                ventana.datoRecibe = "Menu Cenas"
            }
        }
    }
    
    
    @IBAction func cimidas(_ sender: Any) {
        performSegue(withIdentifier: "goComidas", sender: self)
    }
    

    @IBAction func cenas(_ sender: Any) {
        performSegue(withIdentifier: "goCenas", sender: self)
    }
}

