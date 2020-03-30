//
//  BeerInfo.swift
//  DBeer
//
//  Created by Giaele Di Ruggiero on 30/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import SwiftUI

struct BeerInfo: View {
    var birra:Beer
    
    var body: some View {
        List {
            ZStack (alignment: .bottom){
                Image(birra.nomeImmagine)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.30)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(birra.nome)
                            .colorInvert()
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
                
            }
            .listRowInsets(EdgeInsets())
            VStack (alignment: .leading) {
                Text(birra.descrizione)
                    //                .colorInvert()
                    //                .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }
                .padding(.top, 50)
                .buttonStyle(PlainButtonStyle())
                
            }
            .padding(.top)
            .padding(.bottom)
            
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        .listStyle(GroupedListStyle())
    }
}


struct OrderButton: View {
    
    var body: some View{
        
        Button(action: {print("button ok")} ){
            Text("Order Now")
        } .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.red)
            .cornerRadius(10)
    }
    
}

struct BeerInfo_Previews: PreviewProvider {
    static var previews: some View {
        BeerInfo(birra: beerData[0])
    }
}





