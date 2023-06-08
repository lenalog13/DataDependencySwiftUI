//
//  UserManager.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 14.04.2023.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
    
    var nameIsValid: Bool {
        name.count >= 3
    }
    
    func logOut() {
        name = ""
        isRegister = false
    }
}
