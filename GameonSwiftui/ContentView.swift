//
//  ContentView.swift
//  GameonSwiftui
//
//  Created by admin on 07.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var  value : Double = 0.0
    @State private var alertIsVisle: Bool = false
    @State private var ButtonIsVisle: Bool = false
    
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
                Text(String(self.value))
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
                Button(action: {
                    print("Hello word")
                    self.alertIsVisle = true
                    
                }) {
                    Text("click me")
                }
                .alert(isPresented: $alertIsVisle, content: {
                    let rowvalue: Int = Int(self.value)
                    return Alert(title: Text("Hello there! \(self.value)"), message: Text("This is my first po \(rowvalue)"), dismissButton: .default(Text("Awesome")))
                })
                
                
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
