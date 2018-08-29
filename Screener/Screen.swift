//
//  Screen.swift
//  Screener
//
//  Created by Ondrej Rafaj on 15/08/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation
import UIKit


public class Screen {
    
    var config = Config.default
    
    public static let `default` = Screen()
    
    /// Snapshot all available subviews
    ///
    /// - Parameter view: Root view
    public static func snapshot(rootView view: UIView) {
        self.default.snapshot(rootView: view)
    }
    
    /// Snapshot all available subviews
    ///
    /// - Parameter view: Root view
    public func snapshot(rootView view: UIView) {
        // TODO: Consider making a root element screenshot too
        
        let scanner = Scanner(rootView: view, config: config)
        scanner.start { view in
            if let first = view.className.first, String(first) == "_" || config.skip.contains(view.className) {
                return
            }
            let image = view.makeScreenshot()
            let screenshot = Screenshot(view)
            screenshot.image = image
            
            guard let data = image.asData() else {
                return
            }
            let path = URL(fileURLWithPath: NSHomeDirectory(), isDirectory: true).appendingPathComponent("\(screenshot.name).png")
            try? data.write(to: path)
            print("Path: \(path.path)")
        }
    }
    
}
