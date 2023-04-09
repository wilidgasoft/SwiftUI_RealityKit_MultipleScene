//
//  checkOutArray.swift
//  TestCopita1
//
//  Created by wilman garcia on 8/04/23.
//

import Foundation

final class checkOutArray: ObservableObject{
    @Published private (set) var menuObjectSelect: [String] = []
    
    init(){
        add(elemento: "")
    }
    
    func add(elemento:String){
        menuObjectSelect.append(elemento)
    }
    
}
