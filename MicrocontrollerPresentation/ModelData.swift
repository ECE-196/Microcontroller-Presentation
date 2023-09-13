//
//  ModelData.swift
//  GuidedCodeEditor
//
//  Created by Adin Ackerman on 7/17/22.
//

import Foundation
import SwiftUI

class ModelData: ObservableObject {
    @Published var keyframe: CGFloat = 0
    
    let animation: Animation = Animation.spring(response: 0.5, dampingFraction: 1, blendDuration: 1)
    
    func nextKeyframe() {
        withAnimation(animation) {
            keyframe += 1
        }
    }
    
    func prevKeyFrame() {
        withAnimation(animation) {
            keyframe -= 1
        }
    }
}
