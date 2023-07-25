//
//  ViewController.swift
//  GimmeADrink
//
//  Created by Isa Tuncman on 6/29/23.
//

import UIKit

class ViewController: UIViewController, SendImageNameProtocol {
    
    func sendHotDrinkImageName(imgName: String) {
        let img = UIImage(named: imgName)
        imgView1.image = img
    }
    
    func sendColdDrinkImageName(imgName: String) {
        let img = UIImage(named: imgName)
        imgView2.image = img
    }
    var me = 12
    
    

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var imgView1: UIImageView!
    
    
    @IBOutlet weak var imgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //programatic segue
    @IBAction func buttonOnClick(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil) //which storyboard? there might be more than one. so, you need to specify.
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2 //after choosing the storyboard, choose the viewcontroller you want to present.
        vc.delegate = self
        self.present(vc, animated: true)//finally present within very this vc.
    }
    
}

