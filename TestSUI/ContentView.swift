//
//  ContentView.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var check = false
    
    var body: some View {
        TabView() {
            
            if check == false {
                
                LogIn(logged: $check)
                
            } else {
                
                Profile(loginIsOn: $check)
                    .tabItem{
                        Label("Профиль", systemImage: "person")
                    }
                
                Feed()
                    .tabItem{
                        Label("Новости", systemImage: "globe")
                    }
                
                Heroes()
                    .tabItem{
                        Label("Герои", systemImage: "figure.archery")
                    }
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
