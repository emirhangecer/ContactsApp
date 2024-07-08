//
//  KisiKayıt.swift
//  ContactsApp
//
//  Created by Emirhan on 7.07.2024.
//

import UIKit

class KisiKayit: UIViewController {

    
    @IBOutlet weak var tfKisiAd: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func buttonKaydet(_ sender: Any) {
        
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            
            kaydet(tfKisiAd: ka , tfKisiTel: kt)
        }
        
    }
    
    func kaydet(tfKisiAd: String , tfKisiTel: String){
        print("Kişi Kaydet: \(tfKisiAd) - \(tfKisiTel)")
    }
    
}
