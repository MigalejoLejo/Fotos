//
//  SwiftUIView.swift
//  Fotos
//
//  Created by Miguel Alejandro Correa Avila on 18/5/23.
//

import Foundation

struct FotoItem: Identifiable {
    var id = UUID()
    
    var name:String
    var isLiked:Bool = false
}
