//
//  ViewController.swift
//  31TableViewConPeliculas
//
//  Created by mbeascoa on 10/9/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    
    
    var peliculas:[String]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peliculas=["amelie", "americanpie", "Atrapada", "basic", "bones", "Chicago", "dañocolateral", "daredevil", "desapariciones", "diablo", "diasdefutbol", "dostontosmuytontos"]
    }
    
    //número de filas a mostrar en el TableView, se sobreescribe el metodo
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    
    //ponemos en la celda una imagen y un texto
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell (style: UITableViewCell.CellStyle.subtitle, reuseIdentifier:"mycell")
        cell.textLabel?.text = peliculas[indexPath.row]
        cell.imageView?.image = UIImage(named: peliculas[indexPath.row])
        return cell
    }
    

    


}

