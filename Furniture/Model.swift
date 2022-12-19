//
//  Model.swift
//  Furniture
//
//  Created by geka231 on 12.12.2022.
//

import Foundation

struct Model: Identifiable{
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let imageName: String
    
    static let chairs = [
        Model(title: "Begie chair", price: "7000", imageName:"Begie chair"),
        Model(title: "white chair", price: "5000", imageName:"white chair")

    ]
    static let sofas = [
        Model(title: "sofa", price: "10500", imageName:"sofa")
    ]
}
