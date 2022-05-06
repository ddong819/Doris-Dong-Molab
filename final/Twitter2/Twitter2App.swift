//
//  Twitter2App.swift
//  Twitter2
//
//  Created by   dongyunqi on 2022/4/28.
//

import SwiftUI
import Firebase


@main
struct Twitter2App: App {
    
 @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
