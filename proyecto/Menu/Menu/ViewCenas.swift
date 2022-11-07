//
//  ViewCenas.swift
//  Menu
//
//  Created by IMAC17 on 01/11/22.
//

import UIKit

class ViewCenas: UIViewController {

    var datoRecibe: String?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if let dato = datoRecibe{
            self.title = dato
        }
        // Do any additional setup after loading the view.
    }
    

   

}
