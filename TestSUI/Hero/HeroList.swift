//
//  HeroList.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 07.05.2023.
//

import SwiftUI

struct HeroList: View {
    
    var post: Post
    
    var body: some View {
        ZStack{
            AngularGradient(colors: [.blue, .white], center: .trailing)
                .ignoresSafeArea()
                .opacity(0.7)
            VStack{   post.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .imageScale(.large)
                    .shadow(radius: 15)
                Text(post.hero)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 50)
                Text(post.fullDescription)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct HeroList_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post.posts()
        HeroList(post: post[0])
    }
}
