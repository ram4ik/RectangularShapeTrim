//
//  ContentView.swift
//  RectangularShapeTrim
//
//  Created by ramil on 01/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var circleProgress: CGFloat = 1.0
    private var circlePercentage: Int { Int(circleProgress * 100.0)}
    var body: some View {
        VStack(spacing: 30) {
            Text("Rectangular Shape").font(.largeTitle)
            Text("Trim").font(.title).foregroundColor(.gray)
            Text("Trim")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                .padding()
                .background(Color.red).foregroundColor(Color.white)
            
            Rectangle()
                .trim(from: 0, to: circleProgress)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                .frame(height: 300)
                .overlay(Text("\(circlePercentage)%"))
                .font(.largeTitle).foregroundColor(.gray)
                .padding(40)
            
            VStack {
                Text("Profgress")
                HStack {
                    Text("0%")
                    Slider(value: $circleProgress)
                    Text("100%")
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
