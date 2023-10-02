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
    
    // Asking to raycast and adding a sphere at this location
    mutating func raycastFunc(location: CGPoint) {
            guard let query = arView.makeRaycastQuery(from: location, allowing: .estimatedPlane, alignment: .any)
            else { return }
            
            guard let result = arView.session.raycast(query).first
                    
            else { return }
            
            let sphereEntity = ModelEntity(mesh: .generateSphere(radius: 0.1), materials: [SimpleMaterial(color: .white, isMetallic: false)])
            
            let raycastAnchor = AnchorEntity(world: result.worldTransform)
            
            raycastAnchor.addChild(sphereEntity)
            arView.scene.anchors.append(raycastAnchor)
        }
    
}
