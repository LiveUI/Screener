//
//  Config.swift
//  Screener
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation
import UIKit


/// Configuration for Screener
public class Config {
    
    /// Default Config
    public static var `default`: Config {
        let conf = Config()
        return conf
    }
    
    /// Do not explore subviews of system items
    public internal(set) var ignore: [String] = [
        "UISwitch",
        "UISlider",
        "UITableViewLabel"
    ]

    /// Items to ignore/skip for the catalog
    public var skip: [String] = [
        "UIView",
        "UITableView",
        "UIImageView",
        "UITableViewCellContentView",
        "UIVisualEffectView",
        "UIViewControllerWrapperView",
        "UIToolbar",
        "UINavigationTransitionView",
        "UINavigationBar",
        "UILayoutContainerView",
        "UIButtonLabel"
    ]
    
    /// Add an ignore item
    ///
    /// - Parameter item: View type
    public func add<T>(ignore item: T.Type) where T: UIView {
        skip.append(item.className)
    }
    
    /// Remove ignored item from the config
    ///
    /// - Parameter item: View type
    public func remove<T>(ignore item: T.Type) where T: UIView {
        guard let index = skip.index(of: item.className) else {
            return
        }
        skip.remove(at: index)
    }
    
}
