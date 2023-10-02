//
//  ARViewModel.swift
//  MVVMARKit
//
//  Created by thaxz on 02/10/23.
//

import Foundation
import RealityKit


class ARViewModel: ObservableObject {
    @Published private var model : ARModel = ARModel()
    
    var arView : ARView {
        model.arView
    }
    
    // Calling raycast function
    func raycastFunc(location: CGPoint) {
            model.raycastFunc(location: location)
        }
    
}
