//
//  MicrocontrollerPresentation.swift
//  MicrocontrollerPresentation
//
//  Created by Adin Ackerman on 10/12/22.
//

import SwiftUI

@main
struct MicrocontrollerPresentationApp: App {
    @StateObject var data: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
        .commands {
            CommandMenu("Control") {
                Text("Current frame: \(Int(data.keyframe))")
                
                Button("Next Keyframe") {
                    data.nextKeyframe()
                }
                .keyboardShortcut("N")
                
                Button("Previous Keyframe") {
                    data.prevKeyFrame()
                }
                .keyboardShortcut("B")
            }
        }
    }
}
