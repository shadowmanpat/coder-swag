//
//  File.swift
//  coder-swag
//
//  Created by Nikolaos Agas on 22/04/2018.
//  Copyright © 2018 Nikolaos Agas. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title:String
    private(set) public var price:String
    private(set) public var imageName:String
    
    init (title:String, price:String, imageName: String){
         self.title = title
        self.price = price
        self.imageName = imageName
        
    }
    
}
