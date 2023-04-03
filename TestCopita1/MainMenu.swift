//
//  MainMenu.swift
//  TestCopita1
//
//  Created by wilman garcia on 2/04/23.
//

import SwiftUI

struct MainMenu:  View {
    var body: some View {
        
        ZStack {
            
            Color.blue
            
            NavigationStack {

           
                
                VStack {
                    Text("Restaurants")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Spacer()
                    
                    VStack(spacing: 30) {
                        
                        NavigationLink {
                            ContentView(menuOpen: false, width: 300)
                        } label: {
                            Image("copita")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .background(Color.white)
                            
                        }
                        
                        NavigationLink {
                            ContentView(menuOpen: false, width: 270)
                        } label: {
                            Image("tacoco")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .background(Color.white)
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    Spacer()
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
