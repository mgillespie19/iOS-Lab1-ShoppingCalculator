//
//  ViewController.swift
//  Lab1-MaxGillespie
//
//  Created by Max Gillespie on 9/11/18.
//  Copyright © 2018 Max Gillespie. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {
    @IBOutlet weak var Price: UITextField!
    @IBOutlet weak var Discount: UITextField!
    @IBOutlet weak var Tax: UITextField!
    @IBOutlet weak var FinalPrice: UILabel!
    @IBOutlet weak var PriceWODiscount: UILabel!
    
    @IBAction func PriceChange(_ sender: Any) {
        updateDisplay()
    }
    @IBAction func DiscountChange(_ sender: Any) {
        updateDisplay()
    }
    @IBAction func TaxChange(_ sender: Any) {
        updateDisplay()
    }
    
    
    func updateDisplay() {
        var price = Double(0)
        var discount = Double (0)
        var tax = Double (0)
        
        if let tmp = Price.text {
            if !tmp.isEmpty {
                price = Double(tmp)!
            }
        }
        
        if let tmp = Discount.text {
            if !tmp.isEmpty {
                discount = Double(tmp)! / 100
            }
        }
        
        if let tmp = Tax.text {
            if !tmp.isEmpty {
                tax = Double(tmp)! / 100
            }
        }
        
        
        var finalPrice = price - price * discount
        finalPrice += finalPrice * tax
        let priceWODiscount = price + price * tax
        
        PriceWODiscount.text = String(format: "%.2f", priceWODiscount)
        FinalPrice.text = String(format: "%.2f", finalPrice)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

