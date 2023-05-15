//
//  Profile.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 04.05.2023.
//

import SwiftUI

struct Profile: View {
    
    @State private var status: String = "Вы пока не опубликовали статус"
    @State private var status2: String = ""
    @State var avatarSize: CGFloat = 150
    
    @Binding var loginIsOn: Bool
    
    
    private func changeStatus () {
        status = status2
        status2 = ""
    }
    
    private func avaDoubleTap() {
        if avatarSize == 300 {
            avatarSize = 150
        } else {
            avatarSize = 300
        }
    }
    
    private func exitProfile() {
        loginIsOn = false
    }
    
    var body: some View {
        ZStack {
            AngularGradient(colors: [.blue, .white], center: .trailing)
                .ignoresSafeArea()
                .opacity(0.7)
            VStack{
                Image("avatar")
                    .resizable()
                    .frame(width: avatarSize, height: avatarSize)
                    .clipShape(Circle())
                    .imageScale(.large)
                    .shadow(radius: 15)
                    .onTapGesture(count: 2, perform: avaDoubleTap)
                Text("Игорь Скворцов")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text(status)
                    .padding(.top, 1.0)
                TextField("Введите статус", text: $status2)
                    .multilineTextAlignment(.center)
                Button("Изменить статус", action: changeStatus)
                Spacer()
                    .frame(height: 200)
                Button("Выйти из профиля", action: exitProfile)
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(loginIsOn: .constant(false))
    }
}

