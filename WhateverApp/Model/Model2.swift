//
//  Address.swift
//  WhateverApp
//


import Foundation

struct Model2: Codable {
    var data: [UserList]
}

struct User: Codable {
    var data: UserList
}

struct UserList: Codable {
    var id: Int
    var first_name: String
    var email: String
    var avatar: String
}
