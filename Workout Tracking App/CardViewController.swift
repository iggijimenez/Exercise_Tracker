//
//  CardViewController.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/17/23.
//

import Foundation

class CardViewController {
    var unwrapping = UserDefaults.standard.value(forKey: "LastBench")
    
    func unwrap() {
        if unwrapping == nil {
            print("it is nil")
        } else {
            print("nil")
        }
    }
}
