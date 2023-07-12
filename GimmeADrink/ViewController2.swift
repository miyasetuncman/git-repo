//
//  ViewController2.swift
//  GimmeADrink
//
//  Created by Isa Tuncman on 6/29/23.
//

import UIKit


protocol SendImageNameProtocol {
    func sendHotDrinkImageName(imgName: String)
    func sendColdDrinkImageName(imgName: String)
}

class ViewController2: UIViewController {
    
    var delegate: SendImageNameProtocol?
    var hotDrinks: String = ""
    var coldDrinks: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func hotDrinkOnClick(_ sender: UIButton) {
        guard let text = sender.titleLabel?.text else {return}
        hotDrinks = text
        delegate?.sendHotDrinkImageName(imgName: hotDrinks)
        self.dismiss(animated: true)
    }
    
   
    
    
    @IBAction func coldDrinkOnClick(_ sender: UIButton) {
        guard let text = sender.titleLabel?.text else {return}
        coldDrinks = text
        delegate?.sendColdDrinkImageName(imgName: coldDrinks)
        self.dismiss(animated: true)
        
    }
    
    
}
