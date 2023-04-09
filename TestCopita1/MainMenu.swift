//
//  MainMenu.swift
//  TestCopita1
//
//  Created by wilman garcia on 2/04/23.
//

import SwiftUI

struct MainMenu:  View {
   
    
    
    
    var body: some View {
        
        
            
            
            
            NavigationStack {
                ZStack {
                    Color("copitaColor")
                        .ignoresSafeArea()
                        
                    VStack {
                        
                        VStack(spacing: 30) {
                            
                            NavigationLink {
                                ContentView(menuOpen: false, width: 335)
                            } label: {
                                Image("copita")
                                    .resizable()
                                    .frame(width: 250, height: 100)
                                    .background(Color("copitaColor"))
                                
                            }
                            
                        }
                        
                    }
                }
                
            }
            
        
        
        
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
