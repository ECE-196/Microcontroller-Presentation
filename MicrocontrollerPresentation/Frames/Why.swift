//
//  Why.swift
//  GuidedCodeEditor
//
//  Created by Adin Ackerman on 10/12/22.
//

import SwiftUI

struct Why: Frame {
    var t: CGFloat
    var scale: CGFloat
    
    @EnvironmentObject var data: ModelData
    
    let reasons = """
    1. Digital electronics are already involved.
    2. Intended behavior can be programmed.
    3. Tiny.
    4. Easy!
    """
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Why use a **microcontroller**?")
                .font(.system(size: 150 * scale))
                .padding(t <= 0 ? 100 * scale : 50 * scale)
                .scaleEffect(t <= 0 ? 1 : 0.8)
                .animation(data.animation, value: t)
            
            if t > 0 {
                let lines = reasons.split(separator: "\n")
                ForEach(0..<min(Int(t), lines.count), id: \.self) { i in
                    Text(lines[i])
                        .font(.system(size: 100 * scale))
                        .fontWeight(.thin)
                        .foregroundColor(.secondary)
                        .padding(.leading, 100 * scale)
                        .padding(.bottom, 10 * scale)
                }
                .transition(.offset(y: 100 * scale).combined(with: .opacity))
                
                Spacer()
                    .frame(height: 100 * scale)
            }
        }
        .background(RoundedRectangle(cornerRadius: 100 * scale).foregroundColor(.black).opacity(0.2))
    }
}
