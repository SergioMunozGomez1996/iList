//
//  ViewController.swift
//  iList
//
//  Created by Máster Móviles on 05/11/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tablaSource = DSTabla()
    @IBOutlet weak var nombreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = tablaSource
        // Do any additional setup after loading the view.
    }

    @IBAction func insertarTap(_ sender: Any) {
        self.tablaSource.insertarCelda(enTabla: self.tableView, enFila: self.tableView.numberOfRows(inSection: 0), conTexto: self.nombreTextField.text!)
        self.nombreTextField.text = ""
    }
    
}

