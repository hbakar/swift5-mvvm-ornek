//
//  MatematikRepository.swift
//  mvvmOrnek
//
//  Created by Hüseyin BAKAR on 1.11.2023.
//

import Foundation
import RxSwift

class MatematikRepository {
    var sonuc = BehaviorSubject(value: "0")
  
    func topla(alinanSayi1: String, alinanSayi2: String) {
       
        if let s1 = Int(alinanSayi1),let s2 = Int(alinanSayi2) {
            sonuc.onNext(String(s1 + s2))
        }
    }
    
    func carp(alinanSayi1: String, alinanSayi2: String) {
        if let s1 = Int(alinanSayi1),let s2 = Int(alinanSayi2) {
            sonuc.onNext(String(s1 * s2))
        }
    }
}
