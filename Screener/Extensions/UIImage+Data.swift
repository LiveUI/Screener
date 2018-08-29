//
//  UIImage+Data.swift
//  Screener
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation
import UIKit


extension UIImage {
    
    func asData() -> Data? {
        return UIImagePNGRepresentation(self)
    }
    
}
