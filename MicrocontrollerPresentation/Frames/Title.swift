//
//  Title.swift
//  GuidedCodeEditor
//
//  Created by Adin Ackerman on 10/12/22.
//

import SwiftUI

struct Title: Frame {
    var t: CGFloat
    var scale: CGFloat
    
    @EnvironmentObject var data: ModelData
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Microcontrollers")
                .font(.system(size: 300 * scale))
                .fontWeight(.bold)
                .offset(y: t >= 1 ? 0 : 100 * scale)
                .opacity(t >= 1 ? 1 : 0)
                .animation(data.animation, value: t)
            
            Text("ECE 196")
                .font(.system(size: 150 * scale))
                .fontWeight(.medium)
                .offset(y: t >= 1 ? 0 : 100 * scale)
                .opacity(t >= 1 ? 1 : 0)
                .animation(data.animation.delay(0.1), value: t)
            
            Text("By Adin Ackerman")
                .font(.system(size: 100 * scale))
                .fontWeight(.thin)
                .italic()
                .foregroundColor(.secondary)
                .offset(y: t >= 1 ? 0 : 100 * scale)
                .opacity(t >= 1 ? 1 : 0)
                .animation(data.animation.delay(0.2), value: t)
        }
    }
}

//struct Title_Previews: PreviewProvider {
//    static var previews: some View {
//        Title(t: 0)
//    }
//}
