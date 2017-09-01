//
//  ViewController.swift
//  Table View with Classes
//
//  Created by Muhammed Esad Kaya on 01/09/2017.
//  Copyright © 2017 Muhammed Esad Kaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var product = ["TV","Radio","Mouse"]
    var price = ["5000 ₺","14.99 ₺","29.99 ₺"]
    var stock = ["3","90","900"]
    var images = ["TV","radio","mouse"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.product.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ProductTableViewCell
        
        cell.productName.text = product[indexPath.row]
        cell.stock.text = stock[indexPath.row]
        cell.price.text = price[indexPath.row]
        cell.productImage.image = UIImage(named: "\(images[indexPath.row])")
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100
    }



}

