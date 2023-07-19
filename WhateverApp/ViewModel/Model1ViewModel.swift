//
//  Model1ViewModel.swift
//  WhateverApp
//

import Foundation

class Model1ViewModel: ObservableObject {
    
    @Published var datosModel : [Model1] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        URLSession.shared.dataTask(with: url){ data, _, _ in
            guard let data = data else { return }
            do{
                let json = try JSONDecoder().decode([Model1].self, from: data)
                DispatchQueue.main.async {
                    self.datosModel = json
                }
            }catch let error as NSError {
                print("Error en el json", error.localizedDescription)
            }
        }.resume()
    }
}
