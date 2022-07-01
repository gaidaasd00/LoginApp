//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Алексей Гайдуков on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLable: UILabel!
    
    var user = ""
    
    private let basicColor = UIColor(
        red: 200/250,
        green: 100/250,
        blue: 120/250,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 100/250,
        green: 150/250,
        blue: 230/250,
        alpha: 1
    )
        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient(topColor: basicColor, bottomColor: secondaryColor)
        welcomeLable.text = "Welcome, \(user)!"

    }
    

    
}


//MARK: Exension
extension UIView {
    func addGradient(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
        
    }

}
