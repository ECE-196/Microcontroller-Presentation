//
//  What.swift
//  MicrocontrollerPresentation
//
//  Created by Adin Ackerman on 10/13/22.
//

import SwiftUI

struct What: Frame {
    var t: CGFloat
    var scale: CGFloat
    
    @EnvironmentObject var data: ModelData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("What is a **microcontroller**?")
                .font(.system(size: 150 * scale))
                .padding(t <= 0 ? 100 * scale : 50 * scale)
                .scaleEffect(t <= 0 ? 1 : 0.8)
                .animation(data.animation, value: t)
            
            if t > 0 {
                Text("*A microcontroller (MCU for microcontroller unit) is a small computer on a single VLSI integrated circuit (IC) chip. A microcontroller contains one or more CPUs (processor cores) along with memory and programmable input/output peripherals. Program memory in the form of ferroelectric RAM, NOR flash or OTP ROM is also often included on chip, as well as a small amount of RAM. Microcontrollers are designed for embedded applications, in contrast to the microprocessors used in personal computers or other general purpose applications consisting of various discrete chips.*")
                    .font(.system(size: 50 * scale))
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 100 * scale)
                    .transition(.offset(y: 100 * scale).combined(with: .opacity))
            }
        }
    }
}

//struct What_Previews: PreviewProvider {
//    static var previews: some View {
//        What()
//    }
//}
