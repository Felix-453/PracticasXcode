//
//  ViewController.swift
//  Tablas
//
//  Created by IMAC17 on 28/11/22.
//

import UIKit

class ViewController: UIViewController {

    var rolas: [String]? = nil
    var datos: [String] = ["rock","baladas"]
    let CLAVE = "rolas"
    @IBOutlet weak var tabla: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guardar(dato: datos)//guarda los colores en default user
        rolas = RecuperarDatos()
        tabla.dataSource = self
        tabla.delegate = self
        //conexxion de la celda creada  registrada
        tabla.register(UINib(nibName: "MyTableViewCell", bundle:nil), forCellReuseIdentifier: "myCelda")
        
    }

    //base de datos
    //dato para recibir un string
    func guardar(dato: [String]){
        UserDefaults.standard.set(dato, forKey: CLAVE)
        UserDefaults.standard.synchronize()
    }
    //recibe arreglo de strings
    func RecuperarDatos()-> [String]{
        let s:[String] = ["NO DATOS"]
        
        if let valor =
            UserDefaults.standard.stringArray(forKey: CLAVE){
            return valor
        }else{
            return s
        }
        
    }
    func Borrar(){
        UserDefaults.standard.removeObject(forKey: CLAVE)
        UserDefaults.standard.synchronize()
        
    }

}

extension ViewController:
    UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rolas!.count
    }
     //dibuja celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let celda = UITableViewCell(style: .default, reuseIdentifier: "CeldaTipo1")
            
            //celda.textLabel?.text = "Felix"
            var contenido = celda.defaultContentConfiguration()
            
            contenido.text = rolas![indexPath.row]
            contenido.image = UIImage(systemName: "star")
            contenido.textProperties.color = .gray
            contenido.textProperties.font = UIFont.systemFont(ofSize: 30)
            celda.contentConfiguration = contenido
            
            return celda
        }else{
            let celda = tableView.dequeueReusableCell(withIdentifier: "myCelda", for: indexPath) as? MyTableViewCell
            
            celda?.labelTexto.text = rolas![indexPath.row]
            //le manda un UITABLE vacio
            return celda ?? UITableViewCell()
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



