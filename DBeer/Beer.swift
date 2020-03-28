//
//  Beer.swift
//  DBeer2
//
//  Created by Mauro Zobel on 28/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import SwiftUI

struct Beer: Hashable, Codable, Identifiable {
    var id: Int
    var nome: String
    var nomeImmagine: String
    var categoria: Category
    var descrizione: String
    var provenienza: String
    var gradazione: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
         
        case BassaFermentazione = "Bassa fermentazione"
        case AltaFermentazione = "Alta fermentazione"
        case FermentazioneSpontanea = "Fermentazione spontanea"
        
    }
    
}
