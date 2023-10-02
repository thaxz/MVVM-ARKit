//
//  ARModel.swift
//  MVVMARKit
//
//  Created by thaxz on 02/10/23.
//

import Foundation
import RealityKit

struct ARModel {
    private(set) var arView : ARView
    
    init() {
        arView = ARView(frame: .zero)
    }
    
}
