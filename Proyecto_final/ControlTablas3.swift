//
//  ControlTablas3.swift
//  Proyecto_final
//
//  Created by Andrea Hinojosa on 05/04/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Tener acceso a elementos del collection
class ControlTablas3: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let platillos = ["Papas francesas", "Papas tostadas", "Coca Cola", "Coca Cola Light", "Sprite", "Boing Mango", "Jugo naranja"]
    let precio = ["$80", "$50", "$25", "$25", "$25", "$20", "$20"]
    let fotos = ["papas1.png", "papas2.png", "coca.png", "cocalight.png", "sprite.png", "boing.png", "jugo.png"]
    
    //Elementos de celdas necesitas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7 //7 celdas
    }
    
    //celdas y su tipo
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
    //CeldaTitulo objeto de clase TableCell
    let Celdasnacks = collectionView.dequeueReusableCell(withReuseIdentifier: "Snacks", for: indexPath) as! Snacks
                   
    Celdasnacks.layer.cornerRadius = 7.0
        Celdasnacks.PlatilloImg.image = UIImage (named: fotos[indexPath.row])
        Celdasnacks.PrecioLbl.text = precio[indexPath.row]
        Celdasnacks.NombreProductoBtn.setTitle(platillos[indexPath.row], for: .normal)
    
        return Celdasnacks
        
            
    }
    
    
    //Conexión al table view controller ctrl
   
    
    @IBOutlet weak var ProductosSnacks: UICollectionView!
    
    //Main
    override func viewDidLoad() {
        
    ProductosSnacks.delegate = self
    ProductosSnacks.dataSource = self
    }
}
