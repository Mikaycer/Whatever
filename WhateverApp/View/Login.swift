//
//  Login.swift
//  WhateverApp
//


import SwiftUI

struct Login: View {
//    eve.holt@reqres.in
//    cityslicka
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var login: PostViewModel
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Email").foregroundColor(.white).bold()
                TextField("Email", text: $email)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                Text("password").foregroundColor(.white).bold()
                SecureField("pasword", text: $password)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    login.login(email: email, password: password)
                }){
                    Text("Entrar").foregroundColor(.white).bold()
                }
            }.padding(.all)
        }
    }
}

