//
//  DSTabla.swift
//  iList
//
//  Created by Máster Móviles on 05/11/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import Foundation
import UIKit

class DSTabla : NSObject, UITableViewDataSource {
    //en la clase DSTabla, definimos e inicializamos la propiedad
    var datos = ["Daenerys Targaryen", "Jon Nieve", "Cersei Lannister", "Eddard Stark"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nuevaCelda = tableView.dequeueReusableCell(withIdentifier: "unaCelda", for: indexPath)
        nuevaCelda.textLabel?.text = datos[indexPath.row]
        return nuevaCelda
    }
    
    func insertarCelda(enTabla: UITableView, enFila: Int, conTexto: String){
        //AQUI ESTAMOS INSERTANDO EN LA POSICION 0, HABRIA QUE CAMBIARLO
        //Actualizar datos
        self.datos.insert(conTexto, at:enFila)
        //Actualizar visualmente la tabla
        let indexPath = IndexPath(row: enFila,section:0)
        enTabla.insertRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        
    }
    
    

    //Ahora veremos qué métodos debemos implementar

}
