//
//  pedidosAnterioresViewController.swift
//  Proyecto_final
//
//  Created by Iñaki Sigüenza on 07/04/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import UIKit

class detallepedidoAnteriorViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var Tapped = 0
    
    let nombreProducto = ["Lorem Ipsum Dolor", "Lorem Ipsum Dolor","Lorem Ipsum Dolor","Lorem Ipsum Dolor","Lorem Ipsum Dolor","Lorem Ipsum Dolor"]
    
    let precio = ["$0.00","$0.00","$0.00","$0.00","$0.00","$0.00"]
    
    let cantidadProducto = ["Cant: 3","Cant: 1","Cant: 1","Cant: 1","Cant: 2","Cant: 2"]
    
    let imagenProducto = [UIImage(named: "pollo3"),UIImage(named: "boing"),UIImage(named: "pollo1"),UIImage(named: "papas1"),UIImage(named: "coca"),UIImage(named: "papas2")]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        

      
    }
    
   

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nombreProducto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! detallePedidoAnteriorCollectionViewCell
        
        
        
        cell.nombreProducto.text = nombreProducto[indexPath.row]
        cell.precio.text = precio[indexPath.row]
        cell.imagenProducto.image = imagenProducto[indexPath.row]
        cell.cantidadProducto.text = cantidadProducto[indexPath.row]
        
        
        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        

        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        Tapped = indexPath.row
        
        
        switch Tapped {
        case 0:
            performSegue(withIdentifier: "orden01", sender: self)
            break
        case 1:
            performSegue(withIdentifier: "orden01", sender: self)
            break
        case 2:
            performSegue(withIdentifier: "orden01", sender: self)
            break
        case 3:
            performSegue(withIdentifier: "orden01", sender: self)
            break
        default:
            break
            
        }
    }

}

