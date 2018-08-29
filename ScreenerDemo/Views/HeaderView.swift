//
//  HeaderView.swift
//  ScreenerDemo
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation
import UIKit


class HeaderView: UIView {
    
    func setup() {
        backgroundColor = .red
    }
    
    init() {
        super.init(frame: CGRect.zero)
        
        setup()
    }
    
    override init(frame rect: CGRect) {
        super.init(frame: rect)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
