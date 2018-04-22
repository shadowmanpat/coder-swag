//
//  ViewController.swift
//  coder-swag
//
//  Created by Nikolaos Agas on 22/04/2018.
//  Copyright © 2018 Nikolaos Agas. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var categorytable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categorytable.dataSource = self
        categorytable.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
        }else{
            return CategoryCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let productsVC = segue.destination as? ProductVC{
           // assert(sender as? Category?=nil)
            productsVC.initProducts(category: sender as! Category)
//            let batBtn() = ""
//            batBtn.title= ""
           // navigationItem.backBarButtonItem = batBtn
            
        }
        
    }

}

