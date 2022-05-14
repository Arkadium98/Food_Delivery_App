//
//  ProductosEspeciales.swift
//  Proyecto_final
//
//  Created by Andrea Hinojosa on 05/04/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Enlazar nuestra celda con clase
//Tener acceso a los elementos
class ProductosEspeciales: UICollectionViewCell {
    
    //Conectar con ctrl
    @IBOutlet weak var platilloImg: UIImageView!
    @IBOutlet weak var nombreProductoLbl: UILabel!
    @IBOutlet weak var nuevoPrecioLbl: UILabel!
    @IBOutlet weak var viejoPrecioLbl: UILabel!
}
