//
//  ViewController.swift
//  picketViewProyect
//
//  Created by IMAC17 on 01/11/22.
//

import UIKit
       //protocolos
class ViewController: UIViewController {
    
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    @IBOutlet weak var myPage1: UIPageControl!
    @IBOutlet weak var picker1: UIPickerView!
   
    let miPickerValues=["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
    
    let calis=["Enero","Febrero","Marzo","Abril"]
    
    let dias=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30",]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picker1.dataSource = self
        picker1.delegate = self
        
        myPage1.numberOfPages = miPickerValues.count
        myPage1.currentPage = 0
        myPage1.currentPageIndicatorTintColor = .blue
        myPage1.pageIndicatorTintColor = .gray
        
        mySegmentControl.selectedSegmentTintColor = .blue
        mySegmentControl.removeAllSegments()
        
        for (i, valor) in calis.enumerated(){
            mySegmentControl.insertSegment(withTitle: valor, at: i, animated: true)
        }
        
        
        mySegmentControl.selectedSegmentIndex = 0
    }

    @IBAction func pageAction(_ sender: Any) {
        //parametros,pagina actual de row- numero de componente- seleccionasi se quiere mover
        picker1.selectRow(myPage1.currentPage, inComponent: 0, animated: true)
    }
    
    @IBAction func actionSegment(_ sender: Any) {
        
        picker1.selectRow(mySegmentControl.selectedSegmentIndex, inComponent: 0, animated: true)
    }
    
    
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dias.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //reorna el arreglo en la pocicion row
        return dias[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //print("Fila Seleccionada: \(row+1)")
        myPage1.currentPage = row
        mySegmentControl.selectedSegmentIndex = row
    }
    
}
