//
//  UserManager.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 14.04.2023.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    } 
    
    init() {}
    
    init(user: User = User()) {
        self.user = user
    }
    
}

struct User: Codable {
    
    var name = ""
    var isRegister = false
    
}
