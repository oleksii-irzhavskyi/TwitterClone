//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 17.05.2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore

@main
struct TwitterCloneApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
