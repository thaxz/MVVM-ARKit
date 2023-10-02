//
//  ContentView.swift
//  MVVMARKit
//
//  Created by thaxz on 02/10/23.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @ObservedObject var arViewModel : ARViewModel = ARViewModel()
    var body: some View {
        ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all)
        // Adding a sphere at the touch location
            .onTapGesture(coordinateSpace: .global) { location in
                            arViewModel.raycastFunc(location: location)
                        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    var arViewModel: ARViewModel
    
    func makeUIView(context: Context) -> ARView {
        return arViewModel.arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
