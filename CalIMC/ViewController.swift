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
                resultLabel.textColor=UIColor(named: "coloresIMC/Color 1");
            case 18.5..<25:
                resultadoLabel.text = "Normal"
                resultLabel.textColor=UIColor(named: "coloresIMC/Color 2");
            case 25.0..<30:
                resultadoLabel.text = "Gordito"
                resultLabel.textColor=UIColor(named: "coloresIMC/Color 3");
            case 30.0..<35:
                resultadoLabel.text = "Gordo"
                resultLabel.textColor=UIColor(named: "coloresIMC/Color 4");
            case 35.0..<40:
                resultadoLabel.text = "Gordo Gordo"
                resultLabel.textColor=UIColor(named: "coloresIMC/Color 4");
            default:
                resultadoLabel.text = "Gordo Gordo Gordo"
                resultLabel.textColor=UIColor(named: "coloresIMC/Color 4");
            }
    }

    @IBAction func closeInfo(_ sender: UIStoryboardSegue){
        
    }
    
}

