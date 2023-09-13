//
//  ContentView.swift
//  MicrocontrollerPresentation
//
//  Created by Adin Ackerman on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: ModelData
    
    @State var hue: Double = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let t = data.keyframe
                let scale = min(CGFloat(geometry.size.width) / 3840, CGFloat(geometry.size.height) / 2160)
                
                Title(t: t, scale: scale)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: (0...1).contains(t) ? 0 : -100 * scale)
                    .opacity((0...1).contains(t) ? 1 : 0)
                    .animation(data.animation, value: t)
                    .environmentObject(data)
                
                let t2 = t - 2
                
                What(t: t2, scale: scale)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: t2 < 0 ? 100 * scale : t2 > 1 ? -100 * scale : 0)
                    .opacity((0...1).contains(t2) ? 1 : 0)
                    .animation(data.animation, value: t)
                    .environmentObject(data)
                
                let t3 = t2 - 2
                
                Why(t: t3, scale: scale)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: t3 < 0 ? 100 * scale : t3 > 4 ? -100 * scale : 0)
                    .opacity((0...4).contains(t3) ? 1 : 0)
                    .animation(data.animation, value: t)
                    .environmentObject(data)
                
                let t4 = t3 - 5
                
                Which(t: t4, scale: scale)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: t4 < 0 ? 100 * scale : t4 > 5 ? -100 * scale : 0)
                    .opacity((0...5).contains(t4) ? 1 : 0)
                    .animation(data.animation, value: t)
                    .environmentObject(data)
                
                let t5 = t4 - 6
                
                Resources(t: t5, scale: scale)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: t5 < 0 ? 100 * scale : 0)
                    .opacity((0...3).contains(t5) ? 1 : 0)
                    .animation(data.animation, value: t)
                    .environmentObject(data)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
