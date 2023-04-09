//
//  testViewMenu.swift
//  TestCopita1
//
//  Created by wilman garcia on 7/04/23.
//

import SwiftUI

struct testViewMenu: View {
    @ObservedObject var datas = ReadData()
    var body: some View  {
        
        ZStack {
            Color("copitaColor")
                .ignoresSafeArea()
            
            List{
                
                
                Section(header: HStack{
                    Text("SMALL PLATES").font(.largeTitle)
                    .foregroundColor(.red)
                    .border(.gray, width: 2)
                }.background(Color("copitaMenu"))
                    .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                ){
                    ForEach(datas.menuObject, id:\.self) {item in
                        
                        if item.dishType == "SMALL PLATES" {
                            
                            VStack (alignment:.leading) {
                                Text("\(item.displayName) \(item.displayPrice)")
                                    .font(.title3)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                
                                Text("\(item.displayDesc)")
                                    .font(.bold(.caption)())
                            }
                            
                            .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                            .border(.red, width: 3 //,width: vm.selectedcopitafood == name ? 1.0: 0.0
                            )
                            .onTapGesture{
                                //                            vm.selectedcopitafood = name
                                //                            self.openMenu()
                                
                            }
                        }
                    }
                    .listRowBackground(Color("copitaColor")) //color de dentro de la list
                }
                .listStyle(GroupedListStyle())
               
                Section(header: HStack{
                    Text("TACOS").font(.largeTitle)
                    .foregroundColor(.red)
                    .border(.gray, width: 2)
                }.background(Color("copitaMenu"))
                    .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                ){
                    ForEach(datas.menuObject, id:\.self) {item in
                        
                        if item.dishType == "TACOS" {
                            
                            VStack (alignment:.leading) {
                                Text("\(item.displayName) \(item.displayPrice)")
                                    .font(.title3)
                                
                                Text("\(item.displayDesc)")
                                    .font(.bold(.caption)())
                            }
                            .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                            .border(.red, width: 3 //,width: vm.selectedcopitafood == name ? 1.0: 0.0
                            )
                            .onTapGesture{
                                //                            vm.selectedcopitafood = name
                                //                            self.openMenu()
                                
                            }
                        }
                    }
                    .listRowBackground(Color("copitaColor")) //color de dentro de la list
                }
                .listStyle(GroupedListStyle())
                Section(header: HStack{
                    Text("CEVICHES").font(.largeTitle)
                    .foregroundColor(.red)
                    .border(.gray, width: 2)
                }.background(Color("copitaMenu"))
                    .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                ){
                    ForEach(datas.menuObject, id:\.self) {item in
                        
                        if item.dishType == "CEVICHES" {
                            
                            VStack (alignment:.leading) {
                                Text("\(item.displayName) \(item.displayPrice)")
                                    .font(.title3)
                                
                                Text("\(item.displayDesc)")
                                    .font(.bold(.caption)())
                            }
                            .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                            .border(.red, width: 3 //,width: vm.selectedcopitafood == name ? 1.0: 0.0
                            )
                            .onTapGesture{
                                //                            vm.selectedcopitafood = name
                                //                            self.openMenu()
                                
                            }
                        }
                    }
                    .listRowBackground(Color("copitaColor")) //color de dentro de la list
                }
                .listStyle(GroupedListStyle())
                Section(header: HStack{
                    Text("BIG PLATES").font(.largeTitle)
                    .foregroundColor(.red)
                    .border(.gray, width: 2)
                }.background(Color("copitaMenu"))
                    .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                ){
                    ForEach(datas.menuObject, id:\.self) {item in
                        
                        if item.dishType == "BIG PLATES" {
                            
                            VStack (alignment:.leading) {
                                Text("\(item.displayName) \(item.displayPrice)")
                                    .font(.title3)
                                
                                Text("\(item.displayDesc)")
                                    .font(.bold(.caption)())
                            }
                            .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                            .border(.red, width: 3 //,width: vm.selectedcopitafood == name ? 1.0: 0.0
                            )
                            .onTapGesture{
                                //                            vm.selectedcopitafood = name
                                //                            self.openMenu()
                                
                            }
                        }
                    }
                    .listRowBackground(Color("copitaColor")) //color de dentro de la list
                }
                .listStyle(GroupedListStyle())
                
            }
            .scrollContentBackground(.hidden)//toma el background del zstack
            
            
        }
    }
}

struct testViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        testViewMenu()
    }
}
