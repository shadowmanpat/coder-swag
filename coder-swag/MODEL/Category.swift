//
//  Category.swift
//  coder-swag
//
//  Created by Nikolaos Agas on 22/04/2018.
//  Copyright © 2018 Nikolaos Agas. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var categotyTitle: String!
    private(set) public var iamgeName: String!
    
    init(title: String, imageName:String){
        self.categotyTitle = title
        self.iamgeName = imageName
    }
}
