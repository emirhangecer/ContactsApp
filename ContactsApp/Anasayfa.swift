//
//  ViewController.swift
//  ContactsApp
//
//  Created by Emirhan on 7.07.2024.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDetay(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Emirhan", kisi_tel: "1111")
        
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
}

