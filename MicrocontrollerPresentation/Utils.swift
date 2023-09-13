//
//  Utils.swift
//  GuidedCodeEditor
//
//  Created by Adin Ackerman on 7/17/22.
//

import Foundation
import SwiftUI

protocol Frame: View {
    var t: CGFloat { get set }
    var scale: CGFloat { get set }
}

extension Frame {
    var animatableData: CGFloat {
        get { t }
        set { t = newValue }
    }
}
