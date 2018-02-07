//
//  ViewController.swift
//  ExpLayoutInvalidation
//
//  Created by Mischa Hildebrand on 24/01/2017.
//  Copyright © 2017 Mischa Hildebrand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySubview: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load.")
        print("🏁 Initiating layout loop...")
        
        // Specify the number of layout passes here.
//        let 🔄 = 10
//
//        for _ in 1...🔄 {
//            forceLayoutPass(on: mySubview)
//        }
        
        print("🏁 Layout loop finished.")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("View Controller will now layout its subviews.")
    }
    
    /// Forces an immediate layout pass on the view passed as a parameter,
    /// i.e. the method `layoutSubviews()` is called on that view.
    ///
    /// - Parameter view: The view to be laid out.
    func forceLayoutPass(on view: UIView) {
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
    
}


class CustomView: UIView {
    
    var methodCalls = 0
    
    /// This override of `layoutSubviews()` does nothing but counting
    /// the number of times it was called and printing that number to the console.
    override func layoutSubviews() {
        super.layoutSubviews()
        setNeedsLayout()    // Cause infinite layout loop
        methodCalls += 1
        print("layoutSubviews() called \(methodCalls) times.")
    }
    
}
