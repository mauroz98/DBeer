//
//  BeerDetail.swift
//  DBeer
//
//  Created by Giaele Di Ruggiero on 28/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import SwiftUI


struct BearDetail: View {
    
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
                }.padding(.top, 50)
                
            }
            .padding(.top)
            .padding(.bottom)
            
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
    
}

struct OrderButton: View {
    
    var body: some View{
        
        Button(action: {} ){
            Text("Order Now")
        } .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.red)
            .cornerRadius(10)
    }
    
}

struct BearDetail_Previews: PreviewProvider {
    static var previews: some View {
        BearDetail(birra: beerData[0])
    }
}


