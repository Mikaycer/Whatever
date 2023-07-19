//
//  Model1.swift
//  WhateverApp
//


import Foundation

struct Model1: Decodable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
}
struct Address: Decodable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: Geo
}
struct Geo: Decodable {
    var lat: String
    var lng: String
}
