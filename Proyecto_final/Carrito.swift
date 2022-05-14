//
//  Carrito.swift
//  Proyecto_final
//
//  Created by user192828 on 4/7/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Tener acceso a elementos del collection
class Carrito: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let platillos = ["Ensalada de pollo", "Tacos de pollo", "Torta de pollo", "Orange Chicken", "Tacos dorados", "Pollo rostizado", "Chilaquiles pollo", "Chilaquiles huevo", "Burrito pollo", "Sope de pollo", "Huarache de pollo" ]
    let precio = ["$200", "$150", "$200", "$250", "$150", "$300", "$200", "$200", "$150", "$120", "$120"]
    let fotos = ["pollo1.png", "pollo2.png", "pollo3.png", "pollo4.png", "pollo5.png", "pollo6.png","pollo7.png","pollo8.png","pollo9.png","pollo10.png","pollo11.png"]
    
    
    //Elementos de celdas necesitas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.Comprados {
            return 3 // Replace with count of your data for collectionViewA
        } else {
            return 2
        }
    }
    
    //celdas y su tipo
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        if collectionView == self.Comprados {
            let celdaComp = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductosComprados", for: indexPath) as! ProductosComprados
                              
            celdaComp.layer.cornerRadius = 5.0
            celdaComp.NombrePlatilloLbl.text = platillos[indexPath.row]
            celdaComp.PlatilloImg.image = UIImage (named: fotos[indexPath.row])
            celdaComp.PrecioLbl.text = precio[indexPath.row]
            celdaComp.BorrarBtn.layer.cornerRadius = 10
            celdaComp.BorrarBtn.clipsToBounds = true
            celdaComp.EditarBtn.layer.cornerRadius = 10
            celdaComp.EditarBtn.clipsToBounds = true

            return celdaComp
        } else {
            let celdaRecom = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductosRecomendados", for: indexPath) as! ProductosRecomendados
                              
            celdaRecom.layer.cornerRadius = 5.0
            celdaRecom.NombrePlatilloLbl.text = platillos[indexPath.row]
            celdaRecom.PlatilloImg.image = UIImage (named: fotos[indexPath.row])
            celdaRecom.PrecioLbl.text = precio[indexPath.row]
            
            return celdaRecom
        }
        
        
    }
    
    
    @IBAction func boton_carrito(_ sender: Any) {
        showActionsheet()
    }
    
    
    //Conexión al table view controller ctrl
    
    @IBOutlet weak var Comprados: UICollectionView!
    @IBOutlet weak var Recomendados: UICollectionView!

    
    
    //Main
    override func viewDidLoad() {
    
    Comprados.delegate = self
    Comprados.dataSource = self
    
    Recomendados.delegate = self
    Recomendados.dataSource = self
        
    self.view.addSubview(Comprados)
    self.view.addSubview(Recomendados)
    }
    
    
    func showActionsheet(){
        //Crear alerta
        let actionsheet = UIAlertController(title: "ERROR", message: "¿Estas seguro de realizar tu pedido?", preferredStyle: .actionSheet)
              
              //añadirle botones
        actionsheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in print("Realizar Ahora")
              }))

        
        actionsheet.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { action in print("Cancelar")
        }))
     
              present(actionsheet, animated: true)
    }
    
    
}
