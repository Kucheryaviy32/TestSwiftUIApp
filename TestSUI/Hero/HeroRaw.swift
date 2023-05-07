//
//  HeroRaw.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 07.05.2023.
//
import SwiftUI

struct HeroRaw: View {
    
    var post : Post
    
    var body: some View {
            HStack(alignment: .center){
                post.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .border(.gray
                            , width: 3)
                VStack(alignment: .leading){
                    Text(post.hero)
                        .fontWeight(.bold)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                    Text(post.description)
                }
                .multilineTextAlignment(.leading)
        }
    }
}

struct HeroRaw_Previews: PreviewProvider {
    static var previews: some View {
        let posts = Post.posts()
        
        HeroRaw(post: posts[0])
            .previewLayout(.fixed(width: 600, height: 100))
        
    }
}
