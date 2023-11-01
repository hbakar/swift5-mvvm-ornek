//
//  HomeViewModel.swift
//  mvvmOrnek
//
//  Created by Hüseyin BAKAR on 1.11.2023.
//

import Foundation
import RxSwift

class HomeViewModel {
    
    var sonuc = BehaviorSubject(value: "0")
    
    var mrepo = MatematikRepository()
    
    init(){
        sonuc = mrepo.sonuc
    }
  
    func topla(alinanSayi1: String, alinanSayi2: String) {
        if let s1 = Int(alinanSayi1),let s2 = Int(alinanSayi2) {
            mrepo.topla(alinanSayi1: String(s1), alinanSayi2:String(s2))
        }
    }
    
    func carp(alinanSayi1: String, alinanSayi2: String) {
        if let s1 = Int(alinanSayi1),let s2 = Int(alinanSayi2) {
            mrepo.carp(alinanSayi1: String(s1), alinanSayi2:String(s2))
        }
    }
}
