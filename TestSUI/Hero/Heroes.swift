//
//  Heroes.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 07.05.2023.
//

import SwiftUI

struct Heroes: View {
    var body: some View {
        ZStack{
            NavigationView{
                List(Post.posts(), id: \.hero) { post in
                    NavigationLink {
                        HeroList(post: post)
                        
                    } label: {
                        HeroRaw(post: post)
                    }
                }
                .listStyle(.plain)
            }
            
        }
        
    }
    
}


struct Heroes_Previews: PreviewProvider {
    static var previews: some View {
        Heroes()
    }
}
