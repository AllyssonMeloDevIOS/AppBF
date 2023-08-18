//
//  HomeVC.swift
//  AppBackFront
//
//  Created by admin on 17/08/23.
//

import UIKit

class HomeVC: UIViewController {

    var screen : HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    

}
