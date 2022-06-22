//
//  ContentView.swift
//  Lesson3.6
//
//  Created by Андрей Барсук on 16.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            Button(action: { withAnimation {
                show.toggle()
            } }) {
                HStack {
                    Text(show ? "Hide" : "Show")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(show ? 2 : 1)
                        .rotationEffect(.degrees(show ? 0 : 180))
                }
            }
            Spacer()
            if show {
                
                RectView()
                    .frame(width: 250, height: 250)
                    .transition(.transition)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
