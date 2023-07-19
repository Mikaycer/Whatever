//
//  Model2ViewModel.swift
//  WhateverApp
//

import Foundation

class Model2viewModel: ObservableObject {
    
    @Published var datosModel = Model2(data: [])
    
    init(){
        fetch()
    }
    
    func fetch(){
        guard let url = URL(string: "https://reqres.in/api/users?page=2") else { return }
        URLSession.shared.dataTask(with: url){ data, _, _ in
            guard let data = data else { return }
            do{
                let json = try JSONDecoder().decode(Model2.self, from: data)
                DispatchQueue.main.async {
                    self.datosModel = json
                }
            }catch let error as NSError {
                print("Error en el json", error.localizedDescription)
            }
        }.resume()
    }
}
