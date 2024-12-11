//
//  ViewController.swift
//  CalIMC
//
//  Created by Tardes on 11/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    var heigth: Int = 160;
    var weigth: Float = 60.0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Altura //
    
    @IBOutlet weak var heigthLabel: UILabel!
    @IBAction func setHeight(_ sender: UISlider) {
        heigth = Int (sender.value);
        heigthLabel.text = "\(heigth) cm";
    }
    
    // Peso //
    
    @IBOutlet weak var weigthLabel: UILabel!
    @IBAction func setWeight(_ sender: UIStepper) {
        weigth = Float(sender.value);
        weigthLabel.text = "\(weigth) Kg";
    }
    
    // Calcular //
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func calculate(_ sender: Any) {
        let hinmeters = (Float(heigth) / 100.0);
        let imc = weigth / pow(hinmeters, 2);
        resultLabel.text = String(format: "%.2f", imc);
        setResult(fromValue: imc)
    }
    
    // Resultado
    @IBOutlet weak var resultadoLabel: UILabel!
    
    func setResult(fromValue result: Float) {
            switch result {
            case ..<18.5:
                resultadoLabel.text = "Flaco"
            case 18.5..<24.9:
                resultadoLabel.text = "Normal"
            case 25.0..<29.9:
                resultadoLabel.text = "Gordito"
            case 30.0..<34.9:
                resultadoLabel.text = "Gordo"
            case 35.0..<39.9:
                resultadoLabel.text = "Gordo Gordo"
            default:
                resultadoLabel.text = "Casi Explotas"
            }
    }
}

