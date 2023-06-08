//
//  RegisterView.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 14.04.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            TextFieldView(name: $userManager.user.name, nameIsValid: userManager.nameIsValid)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(!userManager.nameIsValid)
        }
    }
    
    private func registerUser() {
        userManager.user.isRegister.toggle()
        DataManager.shared.save(user: userManager.user)
    }
    
}

struct TextFieldView: View {
    
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        ZStack {
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
            
            HStack {
                Spacer()
                Text(name.count.formatted())
                    .font(.callout)
                    .foregroundColor(nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
    
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
