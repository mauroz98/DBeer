//
//  BeerItem.swift
//  DBeer2
//
//  Created by Mauro Zobel on 28/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import SwiftUI

struct BeerItem: View {
    
    var beer: Beer
    
    var body: some View {
        
        NavigationLink(destination: BeerInfo(birra: beer )){
            
            VStack(alignment: .leading, spacing: 16.0) {
                Image(beer.nomeImmagine)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 170)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                VStack(alignment: .leading, spacing: 5.0){
                    Text(beer.nome)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text(beer.descrizione)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .frame(height: 40)
                }
                
            }
        }
        .frame(width:  390 , height: 250)
    }
}

struct BeerItem_Previews: PreviewProvider {
    static var previews: some View {
        BeerItem(beer: beerData[0])
    }
}
