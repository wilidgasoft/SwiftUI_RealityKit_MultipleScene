//
//  Coordinator.swift
//  TestCopita1
//
//  Created by wilman garcia on 2/04/23.
//

import Foundation

import RealityKit
import ARKit

class Coordinator : NSObject, UIGestureRecognizerDelegate{
    var arView: ARView?
    var mainScene: Experience.MainScene
    var vm: FoodViewModel

    @Published var checkOutItem = CheckOutItem()
   
   
    
//    var selectedObject: VirtualObject?
    
    init(vm: FoodViewModel) {
        self.vm = vm

        self.mainScene = try! Experience.loadMainScene()
    }
    
//    var trackedObject: VirtualObject? {
//        didSet {
//            guard trackedObject != nil else { return }
//            selectedObject = trackedObject
//        }
//    }
    
    @objc func doubleTapped(_ recognizer: UITapGestureRecognizer){
        
        guard let arView = arView else {
            return
        }
        
        checkOutItem.addCheckOut(newCheckOut: vm.selectedcopitafood)
        
        switch vm.selectedcopitafood {
        case "Chips&TwoSalsas":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadChipsTwoSalsas()
            arView.scene.anchors.append(boxAnchor)
        case "Guacamole":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadGuacamole()
            arView.scene.anchors.append(boxAnchor)
        case "PapasBravas":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadPapasBravas()
            arView.scene.anchors.append(boxAnchor)
        case "HabaneroWings":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadHabaneroWings()
            arView.scene.anchors.append(boxAnchor)
        case "TortillaSoupCup":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadTortillaSoupCup()
            arView.scene.anchors.append(boxAnchor)
        case "EnsaladaMixta":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadEnsaladaMixta()
            arView.scene.anchors.append(boxAnchor)
        case "GoldenBeetSalad":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadGoldenBeetSalad()
            arView.scene.anchors.append(boxAnchor)
        case "QuesoFundido":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadQuesoFundido()
            arView.scene.anchors.append(boxAnchor)
        case "Bruselas":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadBruselas()
            arView.scene.anchors.append(boxAnchor)
        case "MexicanTruffleEmpanadas":
//            arView.scene.anchors.removeAll()
            let boxAnchor =  try! Experience.loadMexicanTruffleEmpanadas()
            arView.scene.anchors.append(boxAnchor)
            
        default:
          break
        
        }
        

        
    }
    
    
    func installGestures(on object:ModelEntity) {
        object.generateCollisionShapes(recursive: true)
        arView?.installGestures([.rotation, .scale], for: object)
    }
    
    func removeall(){
        guard let arView = arView else {
            return
        }
        arView.scene.anchors.removeAll()
    }

}
