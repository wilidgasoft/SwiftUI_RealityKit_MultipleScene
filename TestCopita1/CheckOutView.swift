//
//  CheckOutView.swift
//  TestCopita1
//
//  Created by wilman garcia on 8/04/23.
//

import SwiftUI

struct CheckOutView: View {
 
    let arr = CheckOutItem()
    @ObservedObject var checkOutItem = CheckOutItem()
    
    
    var body: some View {
        ZStack {
            Color("copitaColor")
                .ignoresSafeArea()
            List{
                Text("asdfsd")
                ForEach(checkOutItem.checkOutItem) { item in
                    Text(item.modelName)
                            }
                listRowBackground(Color("copitaColor"))
            }
            
            .scrollContentBackground(.hidden)
        }
    }
}

struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        
        CheckOutView()
    }
}
