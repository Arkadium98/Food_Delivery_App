//
//  ControlTablas.swift
//  Collections
//
//  Created by Andrea Hinojosa on 25/03/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Tener acceso a elementos del collection
class ControlTablas: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let platillos = ["Ensalada de pollo", "Tacos de pollo", "Torta de pollo", "Orange Chicken", "Tacos dorados", "Pollo rostizado", "Chilaquiles pollo", "Chilaquiles huevo", "Burrito pollo", "Sope de pollo", "Huarache de pollo" ]
    let precio = ["$200", "$150", "$200", "$250", "$150", "$300", "$200", "$200", "$150", "$120", "$120"]
    let precioNuevo = "$100"
    let fotos = ["pollo1.png", "pollo2.png", "pollo3.png", "pollo4.png", "pollo5.png", "pollo6.png","pollo7.png","pollo8.png","pollo9.png","pollo10.png","pollo11.png"]
    
    
    //Elementos de celdas necesitas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.Promociones {
            return 3 // Replace with count of your data for collectionViewA
        } else {
            return 11
        }
    }
    
    //celdas y su tipo
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        if collectionView == self.Promociones {
            let celdaPEsp = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductosEspeciales", for: indexPath) as! ProductosEspeciales
                              
            celdaPEsp.layer.cornerRadius = 5.0
            celdaPEsp.nombreProductoLbl.text = platillos[indexPath.row]
            celdaPEsp.platilloImg.image = UIImage (named: fotos[indexPath.row])
            celdaPEsp.viejoPrecioLbl.text = precio[indexPath.row]
            celdaPEsp.nuevoPrecioLbl.text = precioNuevo

            return celdaPEsp
        } else {
            let celdaProductos = collectionView.dequeueReusableCell(withReuseIdentifier: "Productos", for: indexPath) as! Productos
                              
            celdaProductos.layer.cornerRadius = 5.0
            celdaProductos.NombreProductoLbl.text = platillos[indexPath.row]
            celdaProductos.PlatilloImg.image = UIImage (named: fotos[indexPath.row])
            celdaProductos.PrecioLbl.text = precio[indexPath.row]
            return celdaProductos
        }
        
        
    }
    
    
    //Conexión al table view controller ctrl
    
    @IBOutlet weak var Promociones : UICollectionView!
    @IBOutlet weak var MenuCompleto: UICollectionView!
    
    
    //Main
    override func viewDidLoad() {
    
    Promociones.delegate = self
    Promociones.dataSource = self
    
    MenuCompleto.delegate = self
    MenuCompleto.dataSource = self
        
    self.view.addSubview(Promociones)
    self.view.addSubview(MenuCompleto)
    }
    
}
