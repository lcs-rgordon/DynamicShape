//
//  ContentView.swift
//  DynamicShape
//
//  Created by Russell Gordon on 2023-10-31.
//

import SwiftUI

struct Triangle: Shape {
    
    let a: Double
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * a, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path
        
    }
    
}

struct ContentView: View {
    
    @State var a: Double = 0.0
    
    var body: some View {

        VStack {
            Triangle(a: a)
                .fill(.black)
                .aspectRatio(1.0, contentMode: .fit)
                .padding()
            
            Slider(value: $a, in: 0...1)
                .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
