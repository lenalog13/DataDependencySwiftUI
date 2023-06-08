//
//  DataDependencySwiftUIApp.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 14.04.2023.
//

import SwiftUI

@main
struct DataDependencySwiftUIApp: App {
    
    private let user = DataManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
    
}
