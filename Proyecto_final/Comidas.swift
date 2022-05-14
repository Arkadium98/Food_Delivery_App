//
//  Comidas.swift
//  Proyecto_final
//
//  Created by user192828 on 4/7/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Tener acceso a elementos del collection
class Comidas: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let platillos = ["Ensalada de pollo", "Tacos de pollo", "Torta de pollo", "Orange Chicken", "Tacos dorados", "Pollo rostizado", "Chilaquiles pollo", "Chilaquiles huevo", "Burrito pollo", "Sope de pollo", "Huarache de pollo" ]
    let precio = ["$200", "$150", "$200", "$250", "$150", "$300", "$200", "$200", "$150", "$120", "$120"]
    let fotos = ["pollo1.png", "pollo2.png", "pollo3.png", "pollo4.png", "pollo5.png", "pollo6.png","pollo7.png","pollo8.png","pollo9.png","pollo10.png","pollo11.png"]
    
    
    //Elementos de celdas necesitas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.Platillos {
            return 3 // Replace with count of your data for collectionViewA
        } else {
            return 6
        }
    }
    
    //celdas y su tipo
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        if collectionView == self.Platillos {
            let celdaEsp = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductosPlatillos", for: indexPath) as! ProductosPlatillos
                              
            celdaEsp.layer.cornerRadius = 5.0
            celdaEsp.nombrePlatilloLbl.text = platillos[indexPath.row]
            celdaEsp.platilloImg.image = UIImage (named: fotos[indexPath.row])
            celdaEsp.precioLbl.text = precio[indexPath.row]
            
            return celdaEsp
        } else {
            let celdaPla = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductosEspecialidades", for: indexPath) as! ProductosEspecialidades
                              
            celdaPla.layer.cornerRadius = 5.0
            celdaPla.nombrePlatilloLbl.text = platillos[indexPath.row]
            celdaPla.platilloImg.image = UIImage (named: fotos[indexPath.row])
            celdaPla.precioLbl.text = precio[indexPath.row]
           
            return celdaPla
        }
        
        
    }
    
    
    //Conexión al table view controller ctrl
    
    
    @IBOutlet weak var Especialidades: UICollectionView!
    @IBOutlet weak var Platillos: UICollectionView!
    
        
    
    //Main
    override func viewDidLoad() {
    
    Especialidades.delegate = self
    Especialidades.dataSource = self
    
    Platillos.delegate = self
    Platillos.dataSource = self
        
    self.view.addSubview(Especialidades)
    self.view.addSubview(Platillos)
    }
    
}
