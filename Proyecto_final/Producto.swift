//
//  Producto.swift
//  Proyecto_final
//
//  Created by user192828 on 5/23/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import Foundation

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
   
    @IBOutlet weak var txtBase: UITextField!
    @IBOutlet weak var txtVeroFru: UITextField!
    @IBOutlet weak var txtProteina: UITextField!
    @IBOutlet weak var txtAderezo: UITextField!
    @IBOutlet weak var txtDescripcion: UITextField!
    
   // @IBOutlet weak var txtEmpresa: UITextField!
  //@IBOutlet weak var txtProducto: UITextField!
    let baseArray = ["Lechuga","Brotes","Rútula","Espinacas","Col"]
    let verofruArray = ["Zanahoria","Pepino","Tomate", "Aguacate","Manzana"]
    let proteArray = ["Pollo","Legumbres","Queso","Huevo","Atún"]
    let aderezoArray = ["Vinagre clásico","Salsa de yogur","Vinagreta de mostaza", "César ligera", "Pesto rojo"]
    var ArrayMostrar =  [String()]
    var basePickerView = UIPickerView()
    var verofruPickerView = UIPickerView()
    var protePickerView = UIPickerView()
    var aderezoPickerView = UIPickerView()
    
    
    

    
    override func viewDidLoad() {
       super.viewDidLoad()
       //let UIPicker: UIPickerView = UIPickerView()
        txtBase.inputView = basePickerView
        txtVeroFru.inputView = verofruPickerView
        txtProteina.inputView = protePickerView
        txtAderezo.inputView = aderezoPickerView
        
        
        
        txtBase.placeholder = "Selecciona una Base"
        txtVeroFru.placeholder = "Selecciona una Fruta o Verdura"
        txtProteina.placeholder = "Selecciona una Proteína"
        txtAderezo.placeholder = "Selecciona un Aderezo"
        
        
        
        basePickerView.delegate = self
        basePickerView.dataSource = self
        verofruPickerView.delegate = self
        verofruPickerView.dataSource = self
        protePickerView.delegate = self
        protePickerView.dataSource = self
        aderezoPickerView.delegate = self
        aderezoPickerView.dataSource = self
        
        
        
        txtBase.textAlignment = .center
        txtVeroFru.textAlignment = .center
        txtProteina.textAlignment = .center
        txtAderezo.textAlignment = .center
       
        
        
        basePickerView.tag = 1
        verofruPickerView.tag = 2
        protePickerView.tag = 3
        aderezoPickerView.tag = 4
        ArrayMostrar.removeAll()
        
        
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag{
        case 1:
            return baseArray.count
        case 2:
            return verofruArray.count
        case 3:
            return proteArray.count
        case 4:
            return aderezoArray.count
        default:
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag{
        case 1:
            return baseArray[row]
        case 2:
            return verofruArray[row]
        case 3:
            return proteArray[row]
        case 4:
            return aderezoArray[row]
        default:
            return "Data not found."
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        //txtEmpresa.text = dataArray[row]
        //txtEmpresa.delegate = self
        //txtEmpresa.resignFirstResponder()
        switch pickerView.tag{
        case 1:
            txtBase.text = baseArray[row]
            //txtEmpresa.delegate = self
            txtDescripcion.text = baseArray[row]
            txtBase.resignFirstResponder()
        case 2:
            txtVeroFru.text = verofruArray[row]
            //txtProducto.delegate = self
            txtDescripcion.text = txtDescripcion.text! + " , " + verofruArray[row]
            
            txtVeroFru.resignFirstResponder()
        case 3:
            txtProteina.text = proteArray[row]
            //txtEmpresa.delegate = self
            txtDescripcion.text = txtDescripcion.text! + " , " + proteArray[row]
            txtProteina.resignFirstResponder()
        case 4:
            txtAderezo.text = aderezoArray[row]
            //txtProducto.delegate = self
            txtDescripcion.text = txtDescripcion.text! + " , " + aderezoArray[row]
            
            txtAderezo.resignFirstResponder()
        default:
            return
        }
        
    }
}
