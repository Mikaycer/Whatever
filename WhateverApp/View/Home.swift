//
//  Home.swift
//  WhateverApp
//


import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login: PostViewModel
    @StateObject var json =  Model1ViewModel()
    
    var body: some View {
        NavigationStack{
            if json.datosModel.isEmpty {
                ProgressView()
            }else {
                List(json.datosModel, id: \.id){ item in
                    VStack(alignment: .leading){
                        Text(item.name)
                        Text(item.email)
                        Text(item.address.geo.lat)
                    }
                }.navigationTitle("JSON")
                    .toolbar{
                        HStack{
                            Button(action:{
                                UserDefaults.standard.removeObject(forKey: "sesion")
                                login.authenticated = 0
                            }){
                                Text("Salir")
                            }
                            NavigationLink(destination: Home2()){
                                Text("Siguiente")
                            }
                        }
                    }
            }
        }
    }
}

