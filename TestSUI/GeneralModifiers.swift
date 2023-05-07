//
//  GeneralModifiers.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 04.05.2023.
//

import SwiftUI

// Два модификатора для задачи в ДЗ

struct TitleTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .font(.largeTitle)
            .background(Color(.cyan))
    }
}

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
    }
}

// ----------------------------------

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .frame(width: 250, height: 50)
            .foregroundColor(.blue)
            .background(Color(.white))
    }
}

struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 100, height: 100)
            .shadow(radius: 10, x: 5, y: 5)
    }
}
    

