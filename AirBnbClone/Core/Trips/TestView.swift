//
//  TestView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-20.
//

import SwiftUI

struct TestView: View {
    
    @State private var message = "Message"
    let newGesture = TapGesture().onEnded {
        print("Gesture on VStack.")
    }
    
    
    var body: some View {
        VStack(spacing:25) {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 75, height: 75)
                .padding()
                .foregroundColor(.red)
                .onTapGesture {
                    print("Gesture on image.")
                }
            Rectangle()
                .fill(Color.blue)
        }
        .simultaneousGesture(newGesture)
        .frame(width: 200, height: 200)
        .border(Color.purple)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
