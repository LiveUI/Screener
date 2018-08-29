//
//  Scanner.swift
//  Screener
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation


class Scanner {
    
    let rootView: UIView
    
    let config: Config
    
    init(rootView view: UIView, config: Config) {
        rootView = view
        self.config = config
    }
    
    typealias ElementClosure = (UIView) -> ()
    
    func start(_ elementClosure: ElementClosure) {
        recurse(rootView, elementClosure)
    }
    
    func recurse(_ element: UIView, _ elementClosure: ElementClosure) {
        element.subviews.forEach { subview in
            if config.ignore.contains(subview.className) {
                return
            }
            elementClosure(subview)
            recurse(subview, elementClosure)
        }
    }
    
}
