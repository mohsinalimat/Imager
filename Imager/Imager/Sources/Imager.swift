//
//  Imager.swift
//  Pods
//
//  Created by Meniny on 2017-05-11.
//
//

import Foundation
import UIKit

public struct Imager {
    public static var defaultImageURL: String {
        get {
            return ImagerItem.defaultImageURL
        }
        set {
            ImagerItem.defaultImageURL = newValue
        }
    }
    
    public static func show(images: [UIImage], controller: UIViewController, dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        var items = [ImagerItem]()
        for img in images {
            let item = ImagerItem(image: img)
            items.append(item)
        }
        Imager.show(items: items, controller: controller, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
    
    public static func show(URLs: [URL], controller: UIViewController, dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        var items = [ImagerItem]()
        for url in URLs {
            let item = ImagerItem(imageURL: url)
            items.append(item)
        }
        Imager.show(items: items, controller: controller, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
    
    public static func show(URLStrings: [String], controller: UIViewController, dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        var items = [ImagerItem]()
        for str in URLStrings {
            let item = ImagerItem(imageURLString: str)
            items.append(item)
        }
        Imager.show(items: items, controller: controller, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
    
    public static func show(items: [ImagerItem], controller: UIViewController, dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        // Create an instance of ImagerController.
        let ic = ImagerController(images: items)
        
        // Set delegates.
        ic.pageDelegate = pageDelegate
        ic.dismissalDelegate = dismissalDelegate
        
        // Use dynamic background.
        ic.dynamicBackground = dynamicBackground
        
        // Present your controller.
        controller.present(ic, animated: true, completion: nil)
    }
}

public extension UIViewController {
    public func showImager(images: [UIImage], dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        Imager.show(images: images, controller: self, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
    
    public func showImager(URLs: [URL], dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        Imager.show(URLs: URLs, controller: self, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
    
    public func showImager(URLStrings: [String], dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        Imager.show(URLStrings: URLStrings, controller: self, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
    
    public func showImager(items: [ImagerItem], dynamicBackground: Bool = false, pageDelegate: ImagerControllerPageDelegate? = nil, dismissalDelegate: ImagerControllerDismissalDelegate? = nil) {
        Imager.show(items: items, controller: self, dynamicBackground: dynamicBackground, pageDelegate: pageDelegate, dismissalDelegate: dismissalDelegate)
    }
}
