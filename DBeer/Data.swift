//
//  Data.swift
//  DBeer2
//
//  Created by Mauro Zobel on 28/03/2020.
//  Copyright © 2020 Mauro Zobel. All rights reserved.
//

import Foundation

let beerData:[Beer] = load("data.json")

func load<T:Decodable> (_ filename : String, as type : T.Type = T.self) -> T
{
    let data: Data
    
    guard let file = Bundle.main.url(forResource : filename , withExtension : nil)
        else
        {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
    
    do
    {
        data = try Data(contentsOf : file)
    }
    catch{
        fatalError("Couldn't pare \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self,from : data)
    } catch  {
        fatalError("Couldn't parse \(filename) as \(T.self) : \n\(error)")
    }
}
