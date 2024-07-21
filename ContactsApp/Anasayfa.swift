//
//  ViewController.swift
//  ContactsApp
//
//  Created by Emirhan on 7.07.2024.
//

import UIKit

class Anasayfa: UIViewController, UISearchBarDelegate {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }

    @IBAction func buttonDetay(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Emirhan", kisi_tel: "1111")
        
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"{
            if let kisi = sender as? Kisiler{
                let gidilecekVC = segue.destination as! KisiDetay
                
                gidilecekVC.kisi = kisi
            }
        }
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kisi Ara: \(searchText)")
    }
    
}

