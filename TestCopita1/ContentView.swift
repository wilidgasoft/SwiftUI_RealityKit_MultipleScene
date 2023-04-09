//
//  ContentView.swift
//  TestCopita1
//
//  Created by wilman garcia on 1/04/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    
    
    @StateObject private var vm = FoodViewModel()
    @State private var show: Bool = true
    @State var menuOpen: Bool
    @State private var animationAmount = 1.0
    @ObservedObject var datas = ReadData()
    let width: CGFloat
    @ObservedObject var checkOutItem = CheckOutItem()
//    @ObservedObject var checkOutItems = CheckOutItem()
    
    
//    let copitafood = ["Chips&TwoSalsas", "Guacamole","PapasBravas", "HabaneroWings","TortillaSoupCup", "TortillaSoupBowl","EnsaladaMixta", "GoldenBeetSalad", "QuesoFundido", "Bruselas", "MexicanTruffleEmpanadas" ]
    
    
    var body: some View {
        ZStack{
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color("ColorCopita"))
            .opacity(self.menuOpen ? 1.0 : 0.0)
            //            .animation(Animation.easeIn.delay(0.25))
            
            .animation(
                .easeIn(duration: 1)
                .repeatForever(autoreverses: false),
                value: animationAmount
            )
            .onTapGesture {
                self.openMenu()
            }
            
            ARViewContainer(vm: vm, showed: $show).edgesIgnoringSafeArea(.all)
            
            HStack {
                
                HStack {
                    
//                    List {
//                        ForEach(copitafood, id:\.self) {name in
//                            Image(name)
//                                .resizable()
//                                .frame(width:300, height: 150)
//                                .border(.red, width: vm.selectedcopitafood == name ? 1.0: 0.0)
//                                .onTapGesture{
//                                    vm.selectedcopitafood = name
//                                    self.openMenu()
//                                    
//                                }
//                            
//                        }
//                    }
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
                                            .foregroundColor(.black)
                                            
                                        
                                        Text("\(item.displayDesc)")
                                            .font(.bold(.caption)())
                                            .foregroundColor(.black)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                                    .border(.red, width: vm.selectedcopitafood == item.modelName ? 3.0 : 0.0
                                    )
                                    .onTapGesture{
                                        vm.selectedcopitafood = item.modelName
                                        self.openMenu()
                                        
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
                                            .foregroundColor(.black)
                                        Text("\(item.displayDesc)")
                                            .font(.bold(.caption)())
                                            .foregroundColor(.black)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                                    .border(.red, width: vm.selectedcopitafood == item.modelName ? 3.0 : 0.0
                                    )
                                    .onTapGesture{
                                        vm.selectedcopitafood = item.modelName
                                        self.openMenu()
                                        
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
                                            .foregroundColor(.black)
                                        
                                        Text("\(item.displayDesc)")
                                            .font(.bold(.caption)())
                                            .foregroundColor(.black)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                                    .border(.red, width: vm.selectedcopitafood == item.modelName ? 3.0 : 0.0
                                    )
                                    .onTapGesture{
                                        vm.selectedcopitafood = item.modelName
                                        self.openMenu()
                                        
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
                                            .foregroundColor(.black)
                                        
                                        Text("\(item.displayDesc)")
                                            .font(.bold(.caption)())
                                            .foregroundColor(.black)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
                                    .border(.red, width: vm.selectedcopitafood == item.modelName ? 3.0 : 0.0
                                    )
                                    .onTapGesture{
                                        vm.selectedcopitafood = item.modelName
                                        self.openMenu()
                                        
                                    }
                                }
                            }
                            .listRowBackground(Color("copitaColor")) //color de dentro de la list
                        }
                        .listStyle(GroupedListStyle())
                        
                    }
                    
                    .frame(width: self.width)
                    .background(Color("copitaColor"))
                    .offset(x: self.menuOpen ? 0 : -self.width)
//                    .animation(.default)
                    .scrollContentBackground(.hidden)
                    
                    Spacer()
                }
                VStack {
                    if !self.menuOpen {
                        Button(action: {
                            self.openMenu()
                        }, label: {
                            Image(systemName: "filemenu.and.selection")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color("copitaColor"))
                        })
                    }
//                    else {
//                        Button(action: {
//                            self.openMenu()
//                        }, label: {
//                            Image(systemName: "xmark.circle.fill")
//                                .resizable()
//                                .frame(width: 50, height: 50)
//                        })
//                    }
                    Button(action: {
                        self.show.toggle()
                        checkOutItem.deleteAll()
                    }, label: {
                        Image(systemName: "arrow.counterclockwise")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color("copitaColor"))
                            
                    })
                    Spacer()
                    
                    
//                    NavigationLink {
//                        // destination view to navigation to
//                        CheckOutView()
//                        
//                    } label: {
//                        Image(systemName: "cart.circle.fill")
//                            .resizable()
//                            .frame(width: 35, height: 35)
//                            .foregroundColor(Color("copitaColor"))
//                    }
                }
                
                
                
            }
        }
        
        
    }
    func openMenu() {
        self.menuOpen.toggle()
    }
   
}

struct ARViewContainer: UIViewRepresentable {
    let vm: FoodViewModel
    @Binding var showed: Bool
    
   
   
  
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
        
        
//        arView.addGestureRecognizer(UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.doubleTapped))
//
//        )
        
        let tap = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.doubleTapped))
            tap.numberOfTapsRequired = 2
        arView.addGestureRecognizer(tap)
        
        // Load the "Box" scene from the "Experience" Reality File
        
        
        
        
        
        // Add the box anchor to the scene
        context.coordinator.arView = arView
        arView.addCoachingOverlay()
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        if showed == true {
            removingView(arView: uiView)
        }
    }
    
    func removingView(arView: ARView) {
        arView.scene.anchors.removeAll()
//        checkOutArr.menuObjectSelect.removeAll()
    }
    
    func makeCoordinator() -> Coordinator{
        Coordinator(vm: vm)
        
    }
    
   
    
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(menuOpen: false, width: 300)
    }
}
#endif
