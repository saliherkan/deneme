//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Sefer Furkan Sandal on 16.08.2020.
//  Copyright © 2020 Sefer Furkan Sandal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ilkFiled: UITextField!
    @IBOutlet weak var sonucLabel: UILabel!
    
    @IBOutlet weak var ikinciField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toplamaIslemi(_ sender: Any) {
        let ilk : Int = Int(ilkFiled.text ?? "1") ?? 0
        let ikinci : Int = Int(ikinciField.text ?? "1") ?? 0
        let sonuc : Int = ilk + ikinci
        
        sonucLabel.text = "Sonuç: "  + String(sonuc)
    }
    @IBAction func cikarmaIslemi(_ sender: Any) {
        let ilk : Int = Int(ilkFiled.text ?? "1") ?? 0
        let ikinci : Int = Int(ikinciField.text ?? "1") ?? 0
        let sonuc : Int = ilk - ikinci
        
        sonucLabel.text = "Sonuç: "  + String(sonuc)
    }
    @IBAction func carpmaIslemi(_ sender: Any) {
        let ilk : Int = Int(ilkFiled.text ?? "1") ?? 0
        let ikinci : Int = Int(ikinciField.text ?? "1") ?? 0
        let sonuc : Double = Double(ilk) * Double(ikinci)
        
        sonucLabel.text = "Sonuç: "  + String(sonuc)
    }
    @IBAction func bolmeIslemi(_ sender: Any) {
        let ilk : Int = Int(ilkFiled.text ?? "1") ?? 0
        let ikinci : Int = Int(ikinciField.text ?? "1") ?? 0
        let sonuc : Double = Double(ilk) / Double(ikinci)
        
        sonucLabel.text = "Sonuç: "  + String(sonuc)
    }
}

