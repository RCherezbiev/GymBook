//
//  ContentView.swift
//  GymBook
//
//  Created by Rustam Cherezbiev on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("loginBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: 500, height: 1000)
                .padding(.leading, -8)
                .onTapGesture {
                    self.hideKeyboard()
                }
            
            LoginView()
        }
    }
    
    private func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
}

#Preview {
    ContentView()
}
