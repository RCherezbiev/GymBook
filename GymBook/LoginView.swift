//
//  LoginView.swift
//  GymBook
//
//  Created by Rustam Cherezbiev on 17.03.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Image(systemName: "gym.bag.fill")
                .resizable()
                .frame(width: 150, height: 100)
                .foregroundColor(.black)
                .opacity(0.6)
                .shadow(color: .white, radius: 5)
            
            Text("Gym Book")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Text("Fix & Progrss")
                .font(.headline)
                .foregroundStyle(.white)
            
            VStack(spacing: 10) {
                TextField("Имя пользователя", text: $login)
                    .padding(.leading, 10)
                    .frame(width: 230, height: 30)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(5)
                
                TextField("Пароль", text: $password)
                    .padding(.leading, 10)
                    .frame(width: 230, height: 30)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(5)
            }
            .padding()
            
            Button("Войти") {
                if login == "Rust" && password == "123" {
                    isPresented.toggle()
                }
            }
            .fullScreenCover(isPresented: $isPresented) {
                GymNoteView()
            }
            .buttonStyle(DefaultButtonStyle())
            .frame(width: 150, height: 30)
            .background(Color.blue)
            .tint(.white)
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white))
            
        }
    }
}

#Preview {
    LoginView()
}
