//
//  ViewController.swift
//  NAC_IOS
//
//  Created by Usuário Convidado on 10/05/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtIdade: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calcularButton(_ sender: Any) {
        performSegue(withIdentifier: "goTable", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let table = segue.destination as! TableViewController
        
        let idade = Int(txtIdade.text!)
        table.idade = idade!
    }
    
}

