//
//  HeartButton.swift
//  Fotos
//
//  Created by Miguel Alejandro Correa Avila on 18/5/23.
//

import SwiftUI

struct HeartButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }) {
            ZStack{
                Circle().frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .shadow(color: isLiked ? .blue : .gray, radius: 10)
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .padding(.top,2)
                    .padding(3)
                    .frame(width: 38, height: 35)
                    .foregroundColor(isLiked ? .red : .black)
            }
        }
    }
}

struct HeartButtonLiked_Previews: PreviewProvider {
    @State static var isLiked = true
    static var previews: some View {
        HeartButton(isLiked: $isLiked)
    }
}

struct HeartButtonNotLiked_Previews: PreviewProvider {
    @State static var isLiked = false
    static var previews: some View {
        HeartButton(isLiked: $isLiked)
    }
}
