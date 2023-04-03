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
    @State private var show: Bool = false
    @State var menuOpen: Bool
    @State private var animationAmount = 1.0
    let width: CGFloat
    
    let copitafood = ["Chips&TwoSalsas", "Guacamole","PapasBravas", "HabaneroWings","TortillaSoupCup", "TortillaSoupBowl","EnsaladaMixta", "GoldenBeetSalad", "QuesoFundido", "Bruselas", "MexicanTruffleEmpanadas" ]
    
    
    var body: some View {
        ZStack{
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
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
                    
                    List {
                        ForEach(copitafood, id:\.self) {name in
                            Image(name)
                                .resizable()
                                .frame(width:300, height: 150)
                                .border(.red, width: vm.selectedcopitafood == name ? 1.0: 0.0)
                                .onTapGesture{
                                    vm.selectedcopitafood = name
                                }
                            
                        }
                    }
                    
                    .frame(width: self.width)
                    .background(Color.white)
                    .offset(x: self.menuOpen ? 0 : -self.width)
                    .animation(.default)
                    
                    
                    Spacer()
                }
                VStack {
                    if !self.menuOpen {
                        Button(action: {
                            self.openMenu()
                        }, label: {
                            //                            Text("MENU")
                            Image(systemName: "filemenu.and.selection")
                                .resizable()
                                .frame(width: 50, height: 50)
                        })
                    } else {
                        Button(action: {
                            self.openMenu()
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                        })
                    }
                    
                    
                    Spacer()
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
//        arView.scene.
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
