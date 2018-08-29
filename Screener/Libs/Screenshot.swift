//
//  Screenshot.swift
//  Screener
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation


class Screenshot {
    
    let element: UIView
    
    var name: String {
        return element.className
    }
    
    var image: UIImage?
    
    init(_ element: UIView) {
        self.element = element
    }
    
}
