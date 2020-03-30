//
//  ContentView.swift
//  DBeer
//
//  Created by Mauro Zobel on 28/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var categories:[String:[Beer]]{
        .init(
            grouping: beerData, by: {$0.categoria.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \String.self){
                key in BeerRow(nomeCategoria: "\(key) Beers".uppercased(), beers: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("BEERS"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
