//
//  BeerRow.swift
//  DBeer2
//
//  Created by Mauro Zobel on 28/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import SwiftUI

struct BeerRow: View {
    
    var nomeCategoria : String
    var beers:[Beer]
    
    var body: some View {
        
        ScrollView{
            ForEach(self.beers)
            {beer in BeerItem(beer: beer)
                .frame(width: 300)
                .padding(.vertical, 30)
            }
        }
    }
}

struct BeerRow_Previews: PreviewProvider {
    static var previews: some View {
        BeerRow(nomeCategoria: "chiara", beers: beerData)
    }
}
