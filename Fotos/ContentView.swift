//
//  ContentView.swift
//  Fotos
//
//  Created by Miguel Alejandro Correa Avila on 18/5/23.
//

import SwiftUI

struct ContentView: View {
    
    // Defines my grid Columns
    let columns = [
       GridItem(.flexible()),
       GridItem(.flexible()),
    ]
    
    @State var fotos = [
        FotoItem(name: "foto-1"),
        FotoItem(name: "foto-2"),
        FotoItem(name: "foto-3"),
        FotoItem(name: "foto-4"),
        FotoItem(name: "foto-5"),
        FotoItem(name: "foto-6"),
        FotoItem(name: "foto-7"),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Text("My Photo Gallery")
                            .bold()
                            .font(.title)                            
                        Spacer()
                    }
                    
                    LazyVGrid(columns: columns){
                        
                        ForEach ($fotos){ foto in
                            NavigationLink(destination: FotoView(foto: foto)){
                                FotoCard(foto: foto)
                            }
                        }.padding(5)
                    }
                }
               
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


