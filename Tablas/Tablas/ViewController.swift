//
//  ViewController.swift
//  Tablas
//
//  Created by IMAC17 on 28/11/22.
//

import UIKit

class ViewController: UIViewController {

    let rolas: [String] = ["corridos alterados","huapangos","Rock","rancheritas"]
    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabla.dataSource = self
        tabla.delegate = self
    }


}

extension ViewController:
    UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rolas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let celda = UITableViewCell(style: .default, reuseIdentifier: "CeldaTipo1")
            
            //celda.textLabel?.text = "Felix"
            var contenido = celda.defaultContentConfiguration()
            
            contenido.text = rolas[indexPath.row]
            contenido.image = UIImage(systemName: "star")
            contenido.textProperties.color = .gray
            contenido.textProperties.font = UIFont.systemFont(ofSize: 30)
            celda.contentConfiguration = contenido
            
            return celda
        }else{
            return UITableViewCell()
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Primera seccion"
        }else{
            return "Segunda seccion"
        }
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}



