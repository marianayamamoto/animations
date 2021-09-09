//
//  ContentView.swift
//  Animations
//
//  Created by Mariana Yamamoto on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        Button("Tap Me") {
//            self.animationAmount += 1
        }
        .padding(40)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
//        .animation(
//            Animation.easeInOut(duration: 2)
//                .delay(1)
//        )
//        .animation(
//            Animation.easeInOut(duration: 1)
//                .repeatCount(2, autoreverses: true)
//        )
//        .animation(
//            Animation.easeInOut(duration: 1)
//                .repeatForever(autoreverses: true)
//        )
        .onAppear {
            self.animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
