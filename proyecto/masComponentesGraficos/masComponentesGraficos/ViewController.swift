//
//  ViewController.swift
//  masComponentesGraficos
//
//  Created by IMAC17 on 04/11/22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var VIew1: UIView!
    
    @IBOutlet weak var mySlider: UISlider!
    
  
    @IBOutlet weak var labelEdad: UILabel!
    
    @IBOutlet weak var myStep: UIStepper!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var Switch1: UISwitch!
    
  
    @IBOutlet weak var Genero: UILabel!
    
  
    @IBOutlet weak var Switch2: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mySlider.minimumValue = 0
        mySlider.maximumValue = 26
        mySlider.minimumTrackTintColor = .red
        mySlider.value = 0
        
        myStep.minimumValue = 0
        myStep.maximumValue = 26
        myStep.value = 0
        
        imageView1.image = UIImage(named: "18")
        
        Switch1.isOn = false
        Switch1.onTintColor = .blue
        
        
    }

    @IBAction func myAction(_ sender: Any) {
        labelEdad.text = String(Int(mySlider.value))
        myStep.value = Double(mySlider.value)
        
        if mySlider.value >= 18{
            imageView1.image = UIImage(named: "g")
        }else{
            imageView1.image = UIImage(named: "18")
        }
        
    }
    
    
    @IBAction func myAction2(_ sender: Any) {
        labelEdad.text = String(Int(myStep.value))
        mySlider.value = Float(myStep.value)
    }
    
    
    @IBAction func ActionEventSwitch(_ sender: Any) {
        if Switch1.isOn {
            Genero.text = "Femenino"
        }else{
            Genero.text = "Masculino"
        }
    }
    
    
    @IBAction func actionEventSwitch2(_ sender: Any) {
        if Switch2.isOn{
            VIew1.isHidden = true
        }else{
            VIew1.isHidden = false
        }
    }
    
}

