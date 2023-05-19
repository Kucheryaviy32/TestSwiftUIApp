//
//  LogIn.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 04.05.2023.
//

import SwiftUI


struct LogIn: View {
    
    @State private var logIn: String = ""
    @State private var password: String = ""
    @Binding var logged: Bool
    
    var authorization = LocalAuthorizationService()
    
    private func checkPassword() {
        logged = true
    }
    
    private func faceID() {
       
        authorization.canUseBiometricAuthentication()
        DispatchQueue.main.async {
            authorization.authorizeIfPossible{result in
                if result {
                    logged = result
                }
            }
        }
    }
    
    var body: some View {
        ZStack {
            AngularGradient(colors: [.blue, .white], center: .trailing)
                .ignoresSafeArea()
                .opacity(0.7)
            VStack{
                Image("logo")
                    .resizable()
                    .modifier(ImageModifier())
                Spacer()
                    .frame(height: 50)
                VStack(spacing: 5){
                    TextField("Введите имя пользователя", text: $logIn)
                        .modifier(TextFieldModifier())
                    
                    TextField("Введите пароль", text: $password)
                        .modifier(TextFieldModifier())
                }
                .cornerRadius(10)
                Spacer()
                    .frame(height: 50)
                HStack{
                    Button("Вход", action: checkPassword)
                        .shadow(radius: 3, x: 7, y:7)
                    Button("FaceID", action: faceID)
                        .padding(.leading, 50.0)
                        .shadow(radius: 3, x: 7, y:7)
                }
            }
        }
    }
}


struct LogIn_Previews: PreviewProvider {
    
    static var previews: some View {
        LogIn(logged: .constant(false))
    }
}
