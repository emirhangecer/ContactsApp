//
//  ViewController.swift
//  ContactsApp
//
//  Created by Emirhan on 7.07.2024.
//

import UIKit

class Anasayfa: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Allan", kisi_tel: "1111")
        let k1 = Kisiler(kisi_id: 2, kisi_ad: "Saint", kisi_tel: "2222")
        let k1 = Kisiler(kisi_id: 3, kisi_ad: "Maximin", kisi_tel: "3333")
        
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"{
            if let kisi = sender as? Kisiler{
                let gidilecekVC = segue.destination as! KisiDetay
                
                gidilecekVC.kisi = kisi
            }
        }
    }
}
extension Anasayfa : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kisi Ara: \(searchText)")
    }
}

