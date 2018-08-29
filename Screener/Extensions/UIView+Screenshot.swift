    //
//  UIView+Screenshot.swift
//  Screener
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    var className: String {
        return String(describing: type(of: self))
    }
    
    static var className: String {
        return String(describing: type(of: self))
    }
    
    /// Make screenshot of a view
    ///
    /// - Returns: image representation
    public func makeScreenshot() -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: self.bounds)
        return renderer.image { (context) in
            self.layer.render(in: context.cgContext)
        }
    }
    
}
