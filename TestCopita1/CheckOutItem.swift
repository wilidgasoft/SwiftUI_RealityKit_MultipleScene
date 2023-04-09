//
//  CheckOutItem.swift
//  TestCopita1
//
//  Created by wilman garcia on 8/04/23.
//

import Foundation
class CheckOutItem: ObservableObject {
    @Published var checkOutItem = [ModelCheckOut]().self
    

    func addCheckOut( newCheckOut: String) {

        let checkOut = ModelCheckOut(name: newCheckOut)
        checkOutItem.append(checkOut)
    }
    func deleteAll(){
        checkOutItem.removeAll()
    }
    
}



