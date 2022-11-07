//
//  ViewController1.swift
//  Menu
//
//  Created by IMAC17 on 31/10/22.
//

import UIKit

class ViewDesayunos: UIViewController {

    
    var datoRecibe: String?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if let dato = datoRecibe{
            self.title = dato
        }
        // Do any additional setup after loading the view.
    }
    

    

}
