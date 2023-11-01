//
//  ViewController.swift
//  mvvmOrnek
//
//  Created by Hüseyin BAKAR on 1.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var txtSayi1: UITextField!
    @IBOutlet weak var txtSayi2: UITextField!
    
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.sonuc.subscribe(onNext: { s in
            self.labelSonuc.text = s
        })
    }

    @IBAction func btnTopla(_ sender: Any) {
        if let s1 = txtSayi1.text,let s2 = txtSayi2.text {
            viewModel.topla(alinanSayi1: s1, alinanSayi2: s2)
            
        }
    }
    
    @IBAction func btnCarp(_ sender: Any) {
        if let s1 = txtSayi1.text,let s2 = txtSayi2.text {
            viewModel.carp(alinanSayi1: s1, alinanSayi2: s2)
        }
    }
}

