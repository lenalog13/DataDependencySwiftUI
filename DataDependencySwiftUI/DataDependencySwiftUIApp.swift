//
//  DataDependencySwiftUIApp.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 14.04.2023.
//

import SwiftUI

@main
struct DataDependencySwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
