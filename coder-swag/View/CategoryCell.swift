//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Nikolaos Agas on 22/04/2018.
//  Copyright © 2018 Nikolaos Agas. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitile: UILabel!
    
    func updateView(category:Category){
        categoryTitile.text = category.categotyTitle
        categoryImage.image = UIImage(named: category.iamgeName)
        
        
    }
    

}
