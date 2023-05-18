//
//  FotoView.swift
//  Fotos
//
//  Created by Miguel Alejandro Correa Avila on 18/5/23.
//

import SwiftUI

struct FotoView: View {
    
    @Binding var foto:FotoItem
    var body: some View {
        ZStack{
            
            Image(foto.name).resizable().frame(width: .infinity, height: .infinity)
                .ignoresSafeArea()
                .overlay(Color.white)
                .opacity(0.5)
            VStack{
                Text("Title")
                    .bold()
                    .font(.largeTitle)
                Text("Here comes some description")
                    .font(.title3)

                Button(action: {
                    foto.isLiked.toggle()
                }) {
                    HeartButton(isLiked: $foto.isLiked)
                }
            }
        }
    }
}

struct FotoView_Previews: PreviewProvider {
    @State static var testFoto = FotoItem(name: "foto-1", isLiked: true)
    static var previews: some View {
        FotoView(foto: $testFoto)
    }
}
