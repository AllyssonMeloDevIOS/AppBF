//
//  UIViewController+Extension.swift
//  AppBackFront
//
//  Created by admin on 29/07/23.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyboard(){
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
