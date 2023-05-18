//
//  LikeHeart.swift
//  Fotos
//
//  Created by Miguel Alejandro Correa Avila on 18/5/23.
//

import SwiftUI

struct LikeHeart: View {
    
    var body: some View {
        ZStack{
            Circle().frame(width: 40, height: 40, alignment: .topLeading)
                .foregroundColor(.white)
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
        }
    }
}

struct LikeHeart_Previews: PreviewProvider {
    static var previews: some View {
        LikeHeart()
    }
}
