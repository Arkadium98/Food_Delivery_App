//
//  ControlTablas2.swift
//  Collections
//
//  Created by Andrea Hinojosa on 25/03/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Tener acceso a elementos del collection
class ControlTablas2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let platillos = ["Torta de pollo", "Tacos de pollo", "Chilaquiles pollo", "Chilaquiles huevo", "Burrito de pollo", "Sopes de pollo", "Huarache de pollo"]
    let precio = ["$250", "$150", "$200", "$200", "$150", "$120", "$120"]
    let fotos = ["pollo3.png", "pollo5.png", "pollo7.png", "pollo8.png", "pollo9.png", "pollo10.png", "pollo11.png"]
    
    //Elementos de celdas necesitas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7 //7 celdas
    }
    
    //celdas y su tipo
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
    //CeldaTitulo objeto de clase TableCell
    let CeldaDesayuno = collectionView.dequeueReusableCell(withReuseIdentifier: "Desayunos", for: indexPath) as! Desayunos
                   
    CeldaDesayuno.layer.cornerRadius = 7.0
        CeldaDesayuno.PlatilloImg.image = UIImage (named: fotos[indexPath.row])
        CeldaDesayuno.PrecioLbl.text = precio[indexPath.row]
        CeldaDesayuno.NombreProductoBtn.setTitle(platillos[indexPath.row], for: .normal)
        return CeldaDesayuno
        
            
    }
    
    
    //Conexión al table view controller ctrl
    @IBOutlet weak var ProductosDesayuno: UICollectionView!
    
    
    //Main
    override func viewDidLoad() {
        
    ProductosDesayuno.delegate = self
    ProductosDesayuno.dataSource = self
    }
}
