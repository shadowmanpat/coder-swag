//
//  File.swift
//  coder-swag
//
//  Created by Nikolaos Agas on 22/04/2018.
//  Copyright © 2018 Nikolaos Agas. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
    Category(title:"SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES",imageName:"hoodies.png"),
    Category(title:"HATS", imageName:"hats.png")
    ]
    
    private let hats = [
        Product (title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product (title: "Devslopes Logo hat Black", price: "$18", imageName: "hat03.png"),
        Product (title: "Devslopes Logo Hat White", price: "$18", imageName: "hat04.png"),
        Product (title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product (title: "Devslopes Logo hat Black", price: "$18", imageName: "hat03.png"),
        Product (title: "Devslopes Logo Hat White", price: "$18", imageName: "hat04.png")
    ]
    private let hoohdies = [
        Product (title: "Devslopes Logo hoodied Beanie", price: "$18", imageName: "hoodie01.png"),
        Product (title: "Devslopes Logo hoodies Black", price: "$18", imageName: "hoodie03.png"),
        Product (title: "Devslopes Logo Hat White", price: "$18", imageName: "hat04.png"),
        Product (title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product (title: "Devslopes Logo hat Black", price: "$18", imageName: "hat03.png"),
        Product (title: "Devslopes Logo Hat White", price: "$18", imageName: "hat04.png")
    ]
    private let shirts = [
        Product (title: "Devslopes Logo Shirt Beanie", price: "$18", imageName: "shirt01.png"),
        Product (title: "Devslopes Logo shirt Black", price: "$18", imageName: "hoodie03.png"),
        Product (title: "Devslopes Logo Hat White", price: "$18", imageName: "hat04.png"),
        Product (title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product (title: "Devslopes Logo hat Black", price: "$18", imageName: "hat03.png"),
        Product (title: "Devslopes Logo Hat White", price: "$18", imageName: "hat04.png")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitile title:String) -> [Product]{
        switch  title{
        case "SHIRTS":
            return shirts;
        case "HATS":
            return hats;
        case "HOODIES":
            return hoohdies;
       
        default:
            return hats 
        }
    }
}
