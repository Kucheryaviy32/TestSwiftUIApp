//
//  Feed.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 04.05.2023.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ZStack {
            
            AngularGradient(colors: [.blue, .white], center: .trailing)
                .ignoresSafeArea()
                .opacity(0.7)
            VStack{Text("Новости тю-тю!")
                    .modifier(TitleTextModifier())
                Spacer()
                    .frame(height: 30)
                Text("Принимая во внимание то, что мы живем в удивительное спокойное время, новостей, достойный вашего внимания, к сожалению, нет!")
                    .modifier(TextModifier())
            }
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
