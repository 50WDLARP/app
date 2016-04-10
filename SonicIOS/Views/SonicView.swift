//
//  SonicView.swift
//  Cool Beans
//
//  Created by Kyle on 11/14/14.
//  Copyright (c) 2014 Kyle Weiner. All rights reserved.
//

import UIKit

class SonicView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distance : UILabel!

    @IBAction func Back(sender: UIButton) {
        print("Back")
    }
    
    @IBAction func Tag(sender: UIButton) {
        print("Tag")
    }
    
    @IBAction func Castle(sender: AnyObject) {
        print("Castle")
    }
    
    @IBAction func Back2(sender: AnyObject) {
        print("Back 2")
    }
    
    @IBAction func Play(sender: AnyObject) {
        print("Play")
    }
    
    @IBAction func Pause(sender: AnyObject) {
        print("Pause")
    }
    
    // MARK: Lifecycle

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let bundle = NSBundle(forClass: self.dynamicType)
        self.addSubview(bundle.loadNibNamed("SonicView", owner: self, options: nil)[0] as! UIView)
    }

}
