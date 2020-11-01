//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Sefer Furkan Sandal on 16.08.2020.
//  Copyright © 2020 Sefer Furkan Sandal. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var ilkFiled: UITextField!
    @IBOutlet weak var sonucLabel: UILabel!
    
    @IBOutlet weak var ikinciField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //yorum satırı
    @IBAction func AsagiButonu(_ sender: Any) {
        var x_coordinate : Int = Int(sonucLabel.frame.origin.x)
        
        var y_coordinate : Int = Int (sonucLabel.frame.origin.y)
        //sonucLabel.text = v
        sonucLabel.text = String(x_coordinate) + "," + String(y_coordinate)
        sonucLabel.frame.origin = CGPoint(x: x_coordinate, y: y_coordinate+1)
        
    }
    var isimler = ["Furkan", "Ahmet", "Selami"]
    @IBOutlet weak var PrototipCell: UIView!
    @IBOutlet weak var TableView1: UITableView!
    
    @IBAction func SagButonu(_ sender: Any) {
        sonucLabel.text = "SALİH"
    }
    @IBAction func YukariButonu(_ sender: Any) {
    }
    

    @IBAction func SolButonu(_ sender: Any) {
    }
    @IBAction func JsonParse(_ sender: Any) {
        
        let session = URLSession.shared
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            // Check the response
            print(response as Any)
            
            // Check if an error occured
            if error != nil {
                // HERE you can manage the error
                print(error as Any)
                return
            }
            
            // Serialize the data into an object
            do {
                let json = try JSONDecoder().decode([PostElement].self, from: data! )
                    //try JSONSerialization.jsonObject(with: data!, options: [])
                print(json)
            } catch {
                print("Error during JSON serialization: \(error.localizedDescription)")
            }
            
        })
        task.resume()
    }
    @IBAction func toplamaIslemi(_ sender: Any) {
        let ilk : Int = Int(ilkFiled.text ?? "1") ?? 0
        let ikinci : Int = Int(ikinciField.text ?? "1") ?? 0
        sonucLabel.text = "Sonuç: "  + String(ilk + ikinci)
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
    @IBAction func BosButon(_ sender: Any) {
        var a = 5
        var b = "salih"
        var c : Int = 5
        print(c)
        print(b)
        print(a)
        
    }
}

