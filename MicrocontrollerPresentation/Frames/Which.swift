//
//  Which.swift
//  GuidedCodeEditor
//
//  Created by Adin Ackerman on 10/12/22.
//

import SwiftUI

struct Which: Frame {
    var t: CGFloat
    var scale: CGFloat
    
    @EnvironmentObject var data: ModelData
    
    var body: some View {
        VStack {
            if t <= 3 {
                Text("*Which* microcontroller to choose?")
                    .font(.system(size: 150 * scale))
                    .padding(t <= 0 ? 100 * scale : 50 * scale)
                    .scaleEffect(t <= 0 ? 1 : 0.8)
                    .animation(data.animation, value: t)
            }
            
            if t > 0 {
                HStack {
                    if t <= 3 {
                        VStack {
                            Text("Raspberry Pi")
                                .font(.system(size: 40 * scale))
                                .fontWeight(.light)
                                .foregroundColor(.secondary)
                            
                            Image("raspberrypi")
                                .resizable()
                                .frame(width: 900 * scale, height: 900 * scale)
                                .clipShape(RoundedRectangle(cornerRadius: 100 * scale))
                                .padding(10 * scale)
                            
                            if t > 1 {
                                Text("*Microprocessors*")
                                    .font(.system(size: 100 * scale))
                            }
                        }
                        .scaleEffect(t <= 2 ? 1 : 0.9)
                        .opacity(t <= 2 ? 1: 0.5)
                        
                        Spacer()
                            .frame(width: 200 * scale)
                    }
                    
                    HStack {
                        VStack {
                            Text("Arduino")
                                .font(.system(size: (t <= 3 ? 40 : 100) * scale))
                                .fontWeight(t <= 3 ? .light: .bold)
                                .foregroundColor(t <= 3 ? .secondary: .primary)
                            
                            let size = t <= 3 ? 900.0 : t > 4 ? 600.0 : 1200.0
                            
                            Image("arduino")
                                .resizable()
                                .frame(width: size * scale, height: size * scale)
                                .clipShape(RoundedRectangle(cornerRadius: 100 * scale))
                                .padding(10 * scale)
                            
                            if t > 1 && t <= 3 {
                                Text("*Microcontrollers*")
                                    .font(.system(size: 100 * scale))
                            }
                        }
                        .scaleEffect(1) // stupid
                        
                        if t > 4 {
                            let size = 600.0
                            
                            VStack {
                                Text("ESP32")
                                    .font(.system(size: (t <= 3 ? 40 : 100) * scale))
                                    .fontWeight(t <= 3 ? .light: .bold)
                                    .foregroundColor(t <= 3 ? .secondary: .primary)
                                
                                Image("esp32")
                                    .resizable()
                                    .frame(width: size * scale, height: size * scale)
                                    .clipShape(RoundedRectangle(cornerRadius: 100 * scale))
                                    .padding(10 * scale)
                            }
                            .transition(.offset(x: 500 * scale).combined(with: .opacity))
                            
                            VStack {
                                Text("Adafruit")
                                    .font(.system(size: (t <= 3 ? 40 : 100) * scale))
                                    .fontWeight(t <= 3 ? .light: .bold)
                                    .foregroundColor(t <= 3 ? .secondary: .primary)
                                
                                Image("adafruit")
                                    .resizable()
                                    .frame(width: size * scale, height: size * scale)
                                    .clipShape(RoundedRectangle(cornerRadius: 100 * scale))
                                    .padding(10 * scale)
                            }
                            .transition(.offset(x: 500 * scale).combined(with: .opacity))
                            
                            VStack {
                                Text("STM32")
                                    .font(.system(size: (t <= 3 ? 40 : 100) * scale))
                                    .fontWeight(t <= 3 ? .light: .bold)
                                    .foregroundColor(t <= 3 ? .secondary: .primary)
                                
                                Image("stm32")
                                    .resizable()
                                    .frame(width: size * scale, height: size * scale)
                                    .clipShape(RoundedRectangle(cornerRadius: 100 * scale))
                                    .padding(10 * scale)
                            }
                            .transition(.offset(x: 500 * scale).combined(with: .opacity))
                        }
                    }
                    
                }
                .transition(.offset(y: 500 * scale).combined(with: .opacity))
            }
        }
    }
}

//struct Classes_Previews: PreviewProvider {
//    static var previews: some View {
//        Classes()
//    }
//}
