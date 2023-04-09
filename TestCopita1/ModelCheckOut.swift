//
//  ModelCheckOut.swift
//  TestCopita1
//
//  Created by wilman garcia on 8/04/23.
//

import Foundation

struct ModelCheckOut: Identifiable, Hashable {
    let id = UUID()
    var modelName: String
    
    
    init( name: String){
        self.modelName = name
    }

}
