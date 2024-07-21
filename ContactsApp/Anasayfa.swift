//
//  ViewController.swift
//  ContactsApp
//
//  Created by Emirhan on 7.07.2024.
//

import UIKit

class Anasayfa: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
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

