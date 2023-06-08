//
//  DataManager.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 08.06.2023.
//

import SwiftUI

final class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        guard
            let user = try? JSONDecoder().decode(User.self, from: userData ?? Data())
        else {
            return User()
        }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegister = false
        userManager.user.name = ""
        userData = nil
    }
    
}
