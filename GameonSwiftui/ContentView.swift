//
//  ContentView.swift
//  GameonSwiftui
//
//  Created by admin on 07.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var  value : Double = 0.0
    var body: some View {
        ZStack {
            VStack {
                Text("Put the bulleye as closes you can to")
                    .font(.system(size: 13, weight: .bold))
                    .kerning(3.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    .font(.footnote)
                    .padding()
                Text("89")
                    .font(.system(size: 36, weight: .bold))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                HStack {
                    Text("1")
                    Slider(value: $value, in: 1.0...100.0)
                    Text("100")
                }
                .font(.system(size: 14, weight: .bold))
                Button(action: {}) {
                    Text("click me")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)

        ContentView()
            .previewLayout(.fixed(width: 500, height: 320))
    }
}
