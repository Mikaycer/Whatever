//
//  Home2.swift
//  WhateverApp
//


import SwiftUI

struct Home2: View {
    
    @StateObject var json2 =  Model2viewModel()
    
    var body: some View {
        if json2.datosModel.data.isEmpty {
            ProgressView()
        } else {
            List(json2.datosModel.data, id: \.id){ item in
                NavigationLink(destination: DetailView(id: item.id)){
                    HStack {
                        Image(systemName:  "person.fill")
                            .data(url: URL(string: item.avatar )!)
                            .frame(width: 80, height: 80)
                            .clipped()
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text(item.first_name).font(.title)
                            Text(item.email).font(.subheadline)
                        }
                    }.navigationBarTitle("Json con imagen")
                }
            }
        }
    }
}
extension Image {
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url){
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}
