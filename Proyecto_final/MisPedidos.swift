//
//  MisPedidos.swift
//  Proyecto_final
//
//  Created by user192828 on 4/7/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation
import UIKit

//Tener acceso a elementos del collection
class MisPedidos: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    let total = ["$200", "$150", "$200", "$250", "$150", "$300", "$200", "$200", "$150", "$120", "$120"]
    let codigo = ["2656787", "9238445", "354567", "3456324", "3456788"]
    let horaPe = ["11:30", "12:30", "13:30", "14:30", "15:30"]
    let horaEst = [ "12:30", "13:30", "14:30", "15:30", "16:30"]
    let fecha = [ "12/04/2021", "13/04/2021", "14/04/2021", "15/04/2021", "16/04/2021"]

    
    
    //Elementos de celdas necesitas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.EnCurso {
            return 1 // Replace with count of your data for collectionViewA
        } else {
            return 3
        }
    }
    
    //celdas y su tipo
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        if collectionView == self.EnCurso {
            let celdaCurso = collectionView.dequeueReusableCell(withReuseIdentifier: "PedidosEnCurso", for: indexPath) as! PedidosEnCurso
                
            celdaCurso.layer.cornerRadius = 5.0
            celdaCurso.codigoLbl.text = codigo[indexPath.row]
            celdaCurso.horaPeLbl.text = horaPe[indexPath.row]
            celdaCurso.horaEstLbl.text = horaEst[indexPath.row]

            return celdaCurso
        } else {
            let celdaAnte = collectionView.dequeueReusableCell(withReuseIdentifier: "PedidosAnteriores", for: indexPath) as! PedidosAnteriores
                              
            celdaAnte.layer.cornerRadius = 5.0
            celdaAnte.codigoLbl.text = codigo[indexPath.row]
            celdaAnte.fechaEntreLbl.text = fecha[indexPath.row]
            celdaAnte.totalLbl.text = total[indexPath.row]
            
            return celdaAnte
        }
        
        
    }
    
    
    //Conexión al table view controller ctrl
    
    @IBOutlet weak var EnCurso: UICollectionView!
    @IBOutlet weak var Anteriores: UICollectionView!
    
    
    
    //Main
    override func viewDidLoad() {
    
    EnCurso.delegate = self
    EnCurso.dataSource = self
    
    Anteriores.delegate = self
    Anteriores.dataSource = self
        
    self.view.addSubview(EnCurso)
    self.view.addSubview(Anteriores)
    }
    
}
