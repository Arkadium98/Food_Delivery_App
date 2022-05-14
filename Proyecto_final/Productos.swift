//
//  Productos.swift
//  Proyecto_final
//
//  Created by Andrea Hinojosa on 05/04/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Enlazar nuestra celda con clase
//Tener acceso a los elementos
class Productos: UICollectionViewCell {
    
    //Conectar con ctrl
    @IBOutlet weak var PlatilloImg: UIImageView!
    @IBOutlet weak var PrecioLbl: UILabel!
    @IBOutlet weak var NombreProductoLbl: UILabel!
}
