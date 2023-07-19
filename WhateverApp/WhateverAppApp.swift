//
//  WhateverAppApp.swift
//  WhateverApp
//

import SwiftUI

@main
struct WhateverAppApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
