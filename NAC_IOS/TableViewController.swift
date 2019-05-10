//
//  TableViewController.swift
//  NAC_IOS
//
//  Created by Usuário Convidado on 10/05/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import UIKit



class TableViewController: UITableViewController {
    
    var lista:[String] = []
    var idade:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let fmc:Double = Double(220-idade)
        
        lista.append("Caminhada Rápida "+String(Int(fmc*0.55))+" a "+String(Int(fmc*0.60))+" batidas por minuto")
        lista.append("Trote "+String(Int(fmc*0.65))+" a "+String(Int(fmc*0.70))+" batidas por minuto")
        lista.append("Corrida Leve "+String(Int(fmc*0.75))+" a "+String(Int(fmc*0.80))+" batidas por minuto")
        lista.append("Corrida Moderada "+String(Int(fmc*0.85))+" a "+String(Int(fmc*0.90))+" batidas por minuto")
        lista.append("Corrida Intensa:  "+String(Int(fmc*0.95))+" batidas por minuto")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lista.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = lista[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
