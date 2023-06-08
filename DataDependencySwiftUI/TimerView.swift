//
//  ContentView.swift
//  DataDependencySwiftUI
//
//  Created by Елена Логинова on 14.04.2023.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            
            ButtonView(title: timer.buttonTitle, color: .red, action: timer.startTimer)
            
            Spacer()
            
            ButtonView(title: "LogOut", color: .blue, action: user.logOut)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}


