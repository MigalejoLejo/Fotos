//
//  FotoCard.swift
//  Fotos
//
//  Created by Miguel Alejandro Correa Avila on 18/5/23.
//

import SwiftUI

struct FotoCard: View {
    
    @Binding var foto:FotoItem
    
    var body: some View {
        ZStack{
            Image(foto.name).resizable()
                .cornerRadius(20)
            VStack{
                HStack{
                    Spacer()
                    if (foto.isLiked){LikeHeart()}
                }
                Spacer()
            }.padding()
        } .frame(width: 170, height: 170)

    }
}

struct FotoCard_Previews: PreviewProvider {
    @State static var testFoto = FotoItem(name: "foto-1")
    static var previews: some View {
        FotoCard(foto: $testFoto)
    }
}
