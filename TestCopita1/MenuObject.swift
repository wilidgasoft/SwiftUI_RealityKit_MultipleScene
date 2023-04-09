//
//  MenuObject.swift
//  TestCopita1
//
//  Created by wilman garcia on 7/04/23.
//

import Foundation


struct MenuObject: Identifiable, Decodable, Hashable {
    var id: Int
    let modelName: String
    let displayName: String
    let displayPrice: String
    let displayDesc: String
    let dishType : String
}


