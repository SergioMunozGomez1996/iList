//
//  DelegateTabla.swift
//  iList
//
//  Created by Máster Móviles on 05/11/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import Foundation
import UIKit

class DelegateTabla : NSObject, UITableViewDelegate {
    //se llama cada vez que se hace tap en una celda de la tabla a la que delega
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let celda = tableView.cellForRow(at: indexPath) {
            if celda.textLabel?.textColor == UIColor.red {
                celda.textLabel?.textColor = UIColor.black
            }
            else {
                celda.textLabel?.textColor = UIColor.red
            }
            //deshabilita que se quede marcado el último elemento seleccionado
            tableView.deselectRow(at: indexPath, animated: false)
        }
    }
}
