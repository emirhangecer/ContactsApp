//
//  KisiDetay.swift
//  ContactsApp
//
//  Created by Emirhan on 7.07.2024.
//

import UIKit

class KisiDetay: UIViewController {

    
    @IBOutlet weak var tfKisiAd: UITextField!
    
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisi: Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }

        
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text , let k = kisi {
            
            guncelle(kisi_id: k.kisi_id!, kisi_ad: ka , kisi_tel: kt) }
    }
    
    func guncelle(kisi_id:Int , kisi_ad: String , kisi_tel: String){
        print("Kişi Guncelle: \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
}
