//
//  UIView+Extension.swift
//  AppBackFront
//
//  Created by admin on 20/11/23.
//

import Foundation
import UIKit



extension UIView {
    
    enum RoundCornersAt{
        case topRight
        case topLeft
        case bottomRight
        case bottomLeft
    }
    
        //multiple corners using CACornerMask
    func roundCorners( cornerRadius: Double, typeCorners:[RoundCornersAt]) {
        self.layer.cornerRadius = CGFloat(cornerRadius)
        self.layer.maskedCorners = [
            typeCorners.contains(.topRight) ? .layerMaxXMinYCorner:.init(),
            typeCorners.contains(.topLeft) ? .layerMinXMinYCorner:.init(),
            typeCorners.contains(.bottomRight) ? .layerMaxXMaxYCorner:.init(),
            typeCorners.contains(.bottomLeft) ? .layerMinXMaxYCorner:.init(),
        ]
    }
    
}
