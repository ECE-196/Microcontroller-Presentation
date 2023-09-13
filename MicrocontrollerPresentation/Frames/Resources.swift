//
//  Resources.swift
//  MicrocontrollerPresentation
//
//  Created by Adin Ackerman on 10/12/22.
//

import SwiftUI

struct Resources: Frame {
    var t: CGFloat
    var scale: CGFloat
    
    @EnvironmentObject var data: ModelData

    var body: some View {
        VStack(alignment: .leading) {
            Text("Resources")
                .font(.system(size: 200 * scale))
                .fontWeight(.bold)
            
            HStack {
                VStack {
                    Text("Arduino")
                        .font(.system(size: 60 * scale))
                    
                    let scalar = t != 1 ? 1 : 1.5
                    
                    Image("arduinoqr")
                        .resizable()
                        .frame(width: 400 * scalar * scale, height: 400 * scalar * scale)
                        .padding(10 * scale)
                }
                
                Spacer()
                    .frame(width: 200 * scale)
                
                VStack {
                    Text("CircuitPython")
                        .font(.system(size: 60 * scale))
                    
                    let scalar = t != 2 ? 1 : 1.5
                    
                    Image("circuitpythonqr")
                        .resizable()
                        .frame(width: 400 * scalar * scale, height: 400 * scalar * scale)
                        .padding(10 * scale)
                }
            }
        }
    }
}

//struct GetStarted_Previews: PreviewProvider {
//    static var previews: some View {
//        GetStarted()
//    }
//}
