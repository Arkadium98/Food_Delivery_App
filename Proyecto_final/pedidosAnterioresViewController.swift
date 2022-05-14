//
//  pedidosAnterioresViewController.swift
//  Proyecto_final
//
//  Created by Iñaki Sigüenza on 07/04/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import UIKit

class pedidosAnterioresViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var Tapped = 0
    
    let noOrden = ["0987256272788", "2412496412414","80809809809762","21331233423434","845372926463728","663728282921635"]
    
    let precio = ["$0.00","$0.00","$0.00","$0.00","$0.00","$0.00"]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        

      
    }
    
   

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noOrden.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! pedidosAnterioresCollectionViewCell
        
        
        
        cell.noOrden.text = noOrden[indexPath.row]
        cell.precio.text = precio[indexPath.row]
        
        
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

