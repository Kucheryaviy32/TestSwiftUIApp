//
//  Heroes.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 07.05.2023.
//

import SwiftUI

struct Heroes: View {
    var body: some View {
            NavigationView{
                List(Post.posts(), id: \.hero) { post in
                    NavigationLink {
                        HeroList(post: post)
                    } label: {
                        HeroRaw(post: post)
                    }
                    .listRowBackground(hidden())
                    .listRowSeparatorTint(.black)
                }
                .listStyle(.plain)
                .background(AngularGradient(colors: [.blue, .white], center: .trailing)
                    .opacity(0.7))
        }
    }
}


struct Heroes_Previews: PreviewProvider {
    static var previews: some View {
        Heroes()
    }
}
